
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;


 int SOCKET__SHUTDOWN ;
 int sock_has_perm (int ,int ) ;

__attribute__((used)) static int selinux_socket_shutdown(struct socket *sock, int how)
{
 return sock_has_perm(sock->sk, SOCKET__SHUTDOWN);
}
