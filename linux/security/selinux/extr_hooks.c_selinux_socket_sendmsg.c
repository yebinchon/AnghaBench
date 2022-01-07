
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct msghdr {int dummy; } ;


 int SOCKET__WRITE ;
 int sock_has_perm (int ,int ) ;

__attribute__((used)) static int selinux_socket_sendmsg(struct socket *sock, struct msghdr *msg,
      int size)
{
 return sock_has_perm(sock->sk, SOCKET__WRITE);
}
