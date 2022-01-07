
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOCK_DCCP ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int fprintf (int ,char*) ;
 int stderr ;
 int test_proto (int ,char*) ;

int main(void)
{
 test_proto(SOCK_DGRAM, "UDP");
 test_proto(SOCK_STREAM, "TCP");
 test_proto(SOCK_DCCP, "DCCP");

 fprintf(stderr, "SUCCESS\n");
 return 0;
}
