
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_params {int protocol; int recv_family; int recv_port; } ;
struct sockaddr {int dummy; } ;
typedef int opt ;


 scalar_t__ EADDRINUSE ;
 int SOL_SOCKET ;
 int SO_REUSEPORT ;
 int attach_ebpf (int,int) ;
 scalar_t__ bind (int,struct sockaddr* const,int ) ;
 scalar_t__ errno ;
 int error (int,scalar_t__,char*) ;
 int fprintf (int ,char*) ;
 int free (struct sockaddr* const) ;
 struct sockaddr* new_any_sockaddr (int ,int ) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int sockaddr_size () ;
 int socket (int ,int ,int ) ;
 int stderr ;

__attribute__((used)) static void test_extra_filter(const struct test_params p)
{
 struct sockaddr * const addr =
  new_any_sockaddr(p.recv_family, p.recv_port);
 int fd1, fd2, opt;

 fprintf(stderr, "Testing too many filters...\n");
 fd1 = socket(p.recv_family, p.protocol, 0);
 if (fd1 < 0)
  error(1, errno, "failed to create socket 1");
 fd2 = socket(p.recv_family, p.protocol, 0);
 if (fd2 < 0)
  error(1, errno, "failed to create socket 2");

 opt = 1;
 if (setsockopt(fd1, SOL_SOCKET, SO_REUSEPORT, &opt, sizeof(opt)))
  error(1, errno, "failed to set SO_REUSEPORT on socket 1");
 if (setsockopt(fd2, SOL_SOCKET, SO_REUSEPORT, &opt, sizeof(opt)))
  error(1, errno, "failed to set SO_REUSEPORT on socket 2");

 attach_ebpf(fd1, 10);
 attach_ebpf(fd2, 10);

 if (bind(fd1, addr, sockaddr_size()))
  error(1, errno, "failed to bind recv socket 1");

 if (!bind(fd2, addr, sockaddr_size()) && errno != EADDRINUSE)
  error(1, errno, "bind socket 2 should fail with EADDRINUSE");

 free(addr);
}
