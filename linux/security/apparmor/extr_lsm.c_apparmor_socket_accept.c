
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct TYPE_2__ {int sk_family; } ;


 int AA_BUG (int) ;
 int AA_MAY_ACCEPT ;
 int OP_ACCEPT ;
 int aa_sk_perm (int ,int ,TYPE_1__*) ;
 int accept_perm (struct socket*,struct socket*) ;
 int af_select (int ,int ,int ) ;
 int in_interrupt () ;

__attribute__((used)) static int apparmor_socket_accept(struct socket *sock, struct socket *newsock)
{
 AA_BUG(!sock);
 AA_BUG(!sock->sk);
 AA_BUG(!newsock);
 AA_BUG(in_interrupt());

 return af_select(sock->sk->sk_family,
    accept_perm(sock, newsock),
    aa_sk_perm(OP_ACCEPT, AA_MAY_ACCEPT, sock->sk));
}
