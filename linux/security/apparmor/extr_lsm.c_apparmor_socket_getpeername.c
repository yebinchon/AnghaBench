
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int AA_MAY_GETATTR ;
 int OP_GETPEERNAME ;
 int aa_sock_perm (int ,int ,struct socket*) ;

__attribute__((used)) static int apparmor_socket_getpeername(struct socket *sock)
{
 return aa_sock_perm(OP_GETPEERNAME, AA_MAY_GETATTR, sock);
}
