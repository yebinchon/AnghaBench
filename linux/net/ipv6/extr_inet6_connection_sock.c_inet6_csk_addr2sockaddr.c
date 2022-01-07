
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; int sin6_scope_id; scalar_t__ sin6_flowinfo; int sin6_port; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_bound_dev_if; int sk_v6_daddr; } ;
struct TYPE_2__ {int inet_dport; } ;


 int AF_INET6 ;
 TYPE_1__* inet_sk (struct sock*) ;
 int ipv6_iface_scope_id (int *,int ) ;

void inet6_csk_addr2sockaddr(struct sock *sk, struct sockaddr *uaddr)
{
 struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *) uaddr;

 sin6->sin6_family = AF_INET6;
 sin6->sin6_addr = sk->sk_v6_daddr;
 sin6->sin6_port = inet_sk(sk)->inet_dport;

 sin6->sin6_flowinfo = 0;
 sin6->sin6_scope_id = ipv6_iface_scope_id(&sin6->sin6_addr,
        sk->sk_bound_dev_if);
}
