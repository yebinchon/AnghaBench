
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int sk_bound_dev_if; } ;
struct sk_buff {struct sock* sk; } ;
struct flowi6 {int daddr; int flowi6_oif; } ;
struct TYPE_2__ {int daddr; } ;


 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int ipv6_local_rxpmtu (struct sock*,struct flowi6*,int ) ;

__attribute__((used)) static void xfrm6_local_rxpmtu(struct sk_buff *skb, u32 mtu)
{
 struct flowi6 fl6;
 struct sock *sk = skb->sk;

 fl6.flowi6_oif = sk->sk_bound_dev_if;
 fl6.daddr = ipv6_hdr(skb)->daddr;

 ipv6_local_rxpmtu(sk, &fl6, mtu);
}
