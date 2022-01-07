
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;


 int selinux_netlbl_socket_connect (struct sock*,struct sockaddr*) ;
 int selinux_socket_connect_helper (struct socket*,struct sockaddr*,int) ;

__attribute__((used)) static int selinux_socket_connect(struct socket *sock,
      struct sockaddr *address, int addrlen)
{
 int err;
 struct sock *sk = sock->sk;

 err = selinux_socket_connect_helper(sock, address, addrlen);
 if (err)
  return err;

 return selinux_netlbl_socket_connect(sk, address);
}
