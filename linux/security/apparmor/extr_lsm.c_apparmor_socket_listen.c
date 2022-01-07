
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct TYPE_2__ {int sk_family; } ;


 int AA_BUG (int) ;
 int AA_MAY_LISTEN ;
 int OP_LISTEN ;
 int aa_sk_perm (int ,int ,TYPE_1__*) ;
 int af_select (int ,int ,int ) ;
 int in_interrupt () ;
 int listen_perm (struct socket*,int) ;

__attribute__((used)) static int apparmor_socket_listen(struct socket *sock, int backlog)
{
 AA_BUG(!sock);
 AA_BUG(!sock->sk);
 AA_BUG(in_interrupt());

 return af_select(sock->sk->sk_family,
    listen_perm(sock, backlog),
    aa_sk_perm(OP_LISTEN, AA_MAY_LISTEN, sock->sk));
}
