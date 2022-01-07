
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct test_params {int recv_socks; scalar_t__ protocol; int recv_family; int recv_port; } ;
struct sockaddr {int dummy; } ;
typedef int opt ;


 scalar_t__ SOCK_STREAM ;
 int SOL_SOCKET ;
 int SOL_TCP ;
 int SO_REUSEPORT ;
 int TCP_FASTOPEN ;
 scalar_t__ bind (int,struct sockaddr* const,int ) ;
 int errno ;
 int error (int,int ,char*,...) ;
 int free (struct sockaddr* const) ;
 scalar_t__ listen (int,int) ;
 struct sockaddr* new_any_sockaddr (int ,int ) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int sockaddr_size () ;
 int socket (int ,scalar_t__,int ) ;

__attribute__((used)) static void build_recv_group(const struct test_params p, int fd[], uint16_t mod,
        void (*attach_bpf)(int, uint16_t))
{
 struct sockaddr * const addr =
  new_any_sockaddr(p.recv_family, p.recv_port);
 int i, opt;

 for (i = 0; i < p.recv_socks; ++i) {
  fd[i] = socket(p.recv_family, p.protocol, 0);
  if (fd[i] < 0)
   error(1, errno, "failed to create recv %d", i);

  opt = 1;
  if (setsockopt(fd[i], SOL_SOCKET, SO_REUSEPORT, &opt,
          sizeof(opt)))
   error(1, errno, "failed to set SO_REUSEPORT on %d", i);

  if (i == 0)
   attach_bpf(fd[i], mod);

  if (bind(fd[i], addr, sockaddr_size()))
   error(1, errno, "failed to bind recv socket %d", i);

  if (p.protocol == SOCK_STREAM) {
   opt = 4;
   if (setsockopt(fd[i], SOL_TCP, TCP_FASTOPEN, &opt,
           sizeof(opt)))
    error(1, errno,
          "failed to set TCP_FASTOPEN on %d", i);
   if (listen(fd[i], p.recv_socks * 10))
    error(1, errno, "failed to listen on socket");
  }
 }
 free(addr);
}
