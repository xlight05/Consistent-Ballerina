import ballerina/math;
import ballerina/io;
import consistent;

function main (string... args) {
    string [] users = ["user_mcnulty", "user_bunk", "user_omar", "user_bunny", "user_stringer"];
    consistent:ConsistentHash c = new();
	c.add("cacheA");
	c.add("cacheB");
	c.add("cacheC");
    io:println(c.sortedHashes);
    foreach item in users {
        var x = c.get(item);
        match x {
            string s=> {
                io:println(item +"=>" +s);
            }
            () err=> {
                io:println(err);
            }
        }
    }

}
