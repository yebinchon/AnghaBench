
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ ESOCKTNOSUPPORT ;
 int IP4_ADDR ;
 int IP4_MAPPED6 ;
 int IP6_ADDR ;
 int SOCK_DCCP ;
 int close (int) ;
 scalar_t__ errno ;
 int error (int,scalar_t__,char*) ;
 int fprintf (int ,char*,...) ;
 int run_one_test (int ,int ,int,int ) ;
 int socket (int ,int,int ) ;
 int stderr ;

__attribute__((used)) static void test_proto(int proto, const char *proto_str)
{
 if (proto == SOCK_DCCP) {
  int test_fd;

  test_fd = socket(AF_INET, proto, 0);
  if (test_fd < 0) {
   if (errno == ESOCKTNOSUPPORT) {
    fprintf(stderr, "DCCP not supported: skipping DCCP tests\n");
    return;
   } else
    error(1, errno, "failed to create a DCCP socket");
  }
  close(test_fd);
 }

 fprintf(stderr, "%s IPv4 ... ", proto_str);
 run_one_test(AF_INET, AF_INET, proto, IP4_ADDR);

 fprintf(stderr, "%s IPv6 ... ", proto_str);
 run_one_test(AF_INET6, AF_INET6, proto, IP6_ADDR);

 fprintf(stderr, "%s IPv4 mapped to IPv6 ... ", proto_str);
 run_one_test(AF_INET, AF_INET6, proto, IP4_MAPPED6);
}
