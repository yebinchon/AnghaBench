
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct socket {TYPE_1__* sk; } ;
struct TYPE_2__ {int sk_family; } ;


 int AA_BUG (int) ;
 int aa_sk_perm (char const*,int ,TYPE_1__*) ;
 int af_select (int ,int ,int ) ;
 int in_interrupt () ;
 int sock_perm (char const*,int ,struct socket*) ;

__attribute__((used)) static int aa_sock_perm(const char *op, u32 request, struct socket *sock)
{
 AA_BUG(!sock);
 AA_BUG(!sock->sk);
 AA_BUG(in_interrupt());

 return af_select(sock->sk->sk_family,
    sock_perm(op, request, sock),
    aa_sk_perm(op, request, sock->sk));
}
