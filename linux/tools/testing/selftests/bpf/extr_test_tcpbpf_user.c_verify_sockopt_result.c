
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int EXPECT_EQ (int,int,char*) ;
 int bpf_map_lookup_elem (int,int*,int*) ;

int verify_sockopt_result(int sock_map_fd)
{
 __u32 key = 0;
 int res;
 int rv;


 rv = bpf_map_lookup_elem(sock_map_fd, &key, &res);
 EXPECT_EQ(0, rv, "d");
 EXPECT_EQ(0, res, "d");
 key = 1;

 rv = bpf_map_lookup_elem(sock_map_fd, &key, &res);
 EXPECT_EQ(0, rv, "d");
 EXPECT_EQ(1, res, "d");
 return 0;
err:
 return -1;
}
