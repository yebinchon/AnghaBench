
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int* calloc (int,int) ;
 int error (int,int ,char*) ;
 int fprintf (int ,char*) ;
 int free (int*) ;
 int ksft_exit_skip (char*) ;
 scalar_t__ numa_available () ;
 int numa_max_node () ;
 int stderr ;
 int test (int*,int,int ,int ) ;

int main(void)
{
 int *rcv_fd, nodes;

 if (numa_available() < 0)
  ksft_exit_skip("no numa api support\n");

 nodes = numa_max_node() + 1;

 rcv_fd = calloc(nodes, sizeof(int));
 if (!rcv_fd)
  error(1, 0, "failed to allocate array");

 fprintf(stderr, "---- IPv4 UDP ----\n");
 test(rcv_fd, nodes, AF_INET, SOCK_DGRAM);

 fprintf(stderr, "---- IPv6 UDP ----\n");
 test(rcv_fd, nodes, AF_INET6, SOCK_DGRAM);

 fprintf(stderr, "---- IPv4 TCP ----\n");
 test(rcv_fd, nodes, AF_INET, SOCK_STREAM);

 fprintf(stderr, "---- IPv6 TCP ----\n");
 test(rcv_fd, nodes, AF_INET6, SOCK_STREAM);

 free(rcv_fd);

 fprintf(stderr, "SUCCESS\n");
 return 0;
}
