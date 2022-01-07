
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ encapsulation; struct sock* sk; } ;
struct ipv6hdr {int daddr; } ;
struct flowi6 {int daddr; int fl6_dport; } ;
struct TYPE_2__ {int inet_dport; } ;


 int EMSGSIZE ;
 TYPE_1__* inet_sk (struct sock*) ;
 struct ipv6hdr* inner_ipv6_hdr (struct sk_buff*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ipv6_local_error (struct sock*,int ,struct flowi6*,int ) ;

void xfrm6_local_error(struct sk_buff *skb, u32 mtu)
{
 struct flowi6 fl6;
 const struct ipv6hdr *hdr;
 struct sock *sk = skb->sk;

 hdr = skb->encapsulation ? inner_ipv6_hdr(skb) : ipv6_hdr(skb);
 fl6.fl6_dport = inet_sk(sk)->inet_dport;
 fl6.daddr = hdr->daddr;

 ipv6_local_error(sk, EMSGSIZE, &fl6, mtu);
}
