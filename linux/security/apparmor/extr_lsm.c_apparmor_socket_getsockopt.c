
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int AA_MAY_GETOPT ;
 int OP_GETSOCKOPT ;
 int aa_sock_opt_perm (int ,int ,struct socket*,int,int) ;

__attribute__((used)) static int apparmor_socket_getsockopt(struct socket *sock, int level,
          int optname)
{
 return aa_sock_opt_perm(OP_GETSOCKOPT, AA_MAY_GETOPT, sock,
    level, optname);
}
