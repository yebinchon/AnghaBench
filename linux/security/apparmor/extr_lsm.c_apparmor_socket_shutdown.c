
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int AA_MAY_SHUTDOWN ;
 int OP_SHUTDOWN ;
 int aa_sock_perm (int ,int ,struct socket*) ;

__attribute__((used)) static int apparmor_socket_shutdown(struct socket *sock, int how)
{
 return aa_sock_perm(OP_SHUTDOWN, AA_MAY_SHUTDOWN, sock);
}
