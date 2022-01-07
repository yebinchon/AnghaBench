
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
typedef int opt ;


 int SOL_SOCKET ;
 int SO_REUSEPORT ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;

__attribute__((used)) static void xs_sock_set_reuseport(struct socket *sock)
{
 int opt = 1;

 kernel_setsockopt(sock, SOL_SOCKET, SO_REUSEPORT,
   (char *)&opt, sizeof(opt));
}
