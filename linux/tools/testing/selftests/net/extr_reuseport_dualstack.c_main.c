
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int build_rcv_fd (int ,int ,int*,int) ;
 int close (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int test (int*,int,int ) ;

int main(void)
{
 int rcv_fds[32], i;

 fprintf(stderr, "---- UDP IPv4 created before IPv6 ----\n");
 build_rcv_fd(AF_INET, SOCK_DGRAM, rcv_fds, 5);
 build_rcv_fd(AF_INET6, SOCK_DGRAM, &(rcv_fds[5]), 5);
 test(rcv_fds, 10, SOCK_DGRAM);
 for (i = 0; i < 10; ++i)
  close(rcv_fds[i]);

 fprintf(stderr, "---- UDP IPv6 created before IPv4 ----\n");
 build_rcv_fd(AF_INET6, SOCK_DGRAM, rcv_fds, 5);
 build_rcv_fd(AF_INET, SOCK_DGRAM, &(rcv_fds[5]), 5);
 test(rcv_fds, 10, SOCK_DGRAM);
 for (i = 0; i < 10; ++i)
  close(rcv_fds[i]);




 fprintf(stderr, "---- UDP IPv4 created before IPv6 (large) ----\n");
 build_rcv_fd(AF_INET, SOCK_DGRAM, rcv_fds, 16);
 build_rcv_fd(AF_INET6, SOCK_DGRAM, &(rcv_fds[16]), 16);
 test(rcv_fds, 32, SOCK_DGRAM);
 for (i = 0; i < 32; ++i)
  close(rcv_fds[i]);

 fprintf(stderr, "---- UDP IPv6 created before IPv4 (large) ----\n");
 build_rcv_fd(AF_INET6, SOCK_DGRAM, rcv_fds, 16);
 build_rcv_fd(AF_INET, SOCK_DGRAM, &(rcv_fds[16]), 16);
 test(rcv_fds, 32, SOCK_DGRAM);
 for (i = 0; i < 32; ++i)
  close(rcv_fds[i]);

 fprintf(stderr, "---- TCP IPv4 created before IPv6 ----\n");
 build_rcv_fd(AF_INET, SOCK_STREAM, rcv_fds, 5);
 build_rcv_fd(AF_INET6, SOCK_STREAM, &(rcv_fds[5]), 5);
 test(rcv_fds, 10, SOCK_STREAM);
 for (i = 0; i < 10; ++i)
  close(rcv_fds[i]);

 fprintf(stderr, "---- TCP IPv6 created before IPv4 ----\n");
 build_rcv_fd(AF_INET6, SOCK_STREAM, rcv_fds, 5);
 build_rcv_fd(AF_INET, SOCK_STREAM, &(rcv_fds[5]), 5);
 test(rcv_fds, 10, SOCK_STREAM);
 for (i = 0; i < 10; ++i)
  close(rcv_fds[i]);

 fprintf(stderr, "SUCCESS\n");
 return 0;
}
