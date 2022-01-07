
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_family; void* sin6_port; int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_family; void* sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int opt ;
typedef int addr ;




 int INADDR_ANY ;
 int PORT ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEPORT ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int errno ;
 int error (int,int ,char*,...) ;
 int htonl (int ) ;
 void* htons (int ) ;
 int in6addr_any ;
 scalar_t__ listen (int,size_t) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int,int,int ) ;

__attribute__((used)) static void build_rcv_group(int *rcv_fd, size_t len, int family, int proto)
{
 struct sockaddr_storage addr;
 struct sockaddr_in *addr4;
 struct sockaddr_in6 *addr6;
 size_t i;
 int opt;

 switch (family) {
 case 129:
  addr4 = (struct sockaddr_in *)&addr;
  addr4->sin_family = 129;
  addr4->sin_addr.s_addr = htonl(INADDR_ANY);
  addr4->sin_port = htons(PORT);
  break;
 case 128:
  addr6 = (struct sockaddr_in6 *)&addr;
  addr6->sin6_family = 128;
  addr6->sin6_addr = in6addr_any;
  addr6->sin6_port = htons(PORT);
  break;
 default:
  error(1, 0, "Unsupported family %d", family);
 }

 for (i = 0; i < len; ++i) {
  rcv_fd[i] = socket(family, proto, 0);
  if (rcv_fd[i] < 0)
   error(1, errno, "failed to create receive socket");

  opt = 1;
  if (setsockopt(rcv_fd[i], SOL_SOCKET, SO_REUSEPORT, &opt,
          sizeof(opt)))
   error(1, errno, "failed to set SO_REUSEPORT");

  if (bind(rcv_fd[i], (struct sockaddr *)&addr, sizeof(addr)))
   error(1, errno, "failed to bind receive socket");

  if (proto == SOCK_STREAM && listen(rcv_fd[i], len * 10))
   error(1, errno, "failed to listen on receive port");
 }
}
