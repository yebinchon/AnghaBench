
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opt ;


 int AF_INET ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_REUSEPORT ;
 int attach_cbpf (int,int) ;
 int attach_ebpf (int,int) ;
 int close (int) ;
 int errno ;
 int error (int,int ,char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;

__attribute__((used)) static void test_filter_without_bind(void)
{
 int fd1, fd2, opt = 1;

 fprintf(stderr, "Testing filter add without bind...\n");
 fd1 = socket(AF_INET, SOCK_DGRAM, 0);
 if (fd1 < 0)
  error(1, errno, "failed to create socket 1");
 fd2 = socket(AF_INET, SOCK_DGRAM, 0);
 if (fd2 < 0)
  error(1, errno, "failed to create socket 2");
 if (setsockopt(fd1, SOL_SOCKET, SO_REUSEPORT, &opt, sizeof(opt)))
  error(1, errno, "failed to set SO_REUSEPORT on socket 1");
 if (setsockopt(fd2, SOL_SOCKET, SO_REUSEPORT, &opt, sizeof(opt)))
  error(1, errno, "failed to set SO_REUSEPORT on socket 2");

 attach_ebpf(fd1, 10);
 attach_cbpf(fd2, 10);

 close(fd1);
 close(fd2);
}
