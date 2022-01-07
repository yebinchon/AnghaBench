
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int sk_family; } ;


 int AA_BUG (int) ;
 int AA_MAY_BIND ;
 int OP_BIND ;
 int aa_sk_perm (int ,int ,TYPE_1__*) ;
 int af_select (int ,int ,int ) ;
 int bind_perm (struct socket*,struct sockaddr*,int) ;
 int in_interrupt () ;

__attribute__((used)) static int apparmor_socket_bind(struct socket *sock,
    struct sockaddr *address, int addrlen)
{
 AA_BUG(!sock);
 AA_BUG(!sock->sk);
 AA_BUG(!address);
 AA_BUG(in_interrupt());

 return af_select(sock->sk->sk_family,
    bind_perm(sock, address, addrlen),
    aa_sk_perm(OP_BIND, AA_MAY_BIND, sock->sk));
}
