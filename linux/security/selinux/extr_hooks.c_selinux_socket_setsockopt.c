
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;


 int SOCKET__SETOPT ;
 int selinux_netlbl_socket_setsockopt (struct socket*,int,int) ;
 int sock_has_perm (int ,int ) ;

__attribute__((used)) static int selinux_socket_setsockopt(struct socket *sock, int level, int optname)
{
 int err;

 err = sock_has_perm(sock->sk, SOCKET__SETOPT);
 if (err)
  return err;

 return selinux_netlbl_socket_setsockopt(sock, level, optname);
}
