
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int _SC_NPROCESSORS_ONLN ;
 int* calloc (int,int) ;
 int errno ;
 int error (int,int ,char*) ;
 int fprintf (int ,char*) ;
 int free (int*) ;
 int stderr ;
 int sysconf (int ) ;
 int test (int*,int,int ,int ) ;

int main(void)
{
 int *rcv_fd, cpus;

 cpus = sysconf(_SC_NPROCESSORS_ONLN);
 if (cpus <= 0)
  error(1, errno, "failed counting cpus");

 rcv_fd = calloc(cpus, sizeof(int));
 if (!rcv_fd)
  error(1, 0, "failed to allocate array");

 fprintf(stderr, "---- IPv4 UDP ----\n");
 test(rcv_fd, cpus, AF_INET, SOCK_DGRAM);

 fprintf(stderr, "---- IPv6 UDP ----\n");
 test(rcv_fd, cpus, AF_INET6, SOCK_DGRAM);

 fprintf(stderr, "---- IPv4 TCP ----\n");
 test(rcv_fd, cpus, AF_INET, SOCK_STREAM);

 fprintf(stderr, "---- IPv6 TCP ----\n");
 test(rcv_fd, cpus, AF_INET6, SOCK_STREAM);

 free(rcv_fd);

 fprintf(stderr, "SUCCESS\n");
 return 0;
}
