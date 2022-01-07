
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {struct dst_entry* sk_rx_dst; } ;
struct sk_buff {int skb_iif; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int rx_dst_ifindex; } ;


 scalar_t__ dst_hold_safe (struct dst_entry*) ;
 TYPE_1__* inet_sk (struct sock*) ;
 struct dst_entry* skb_dst (struct sk_buff const*) ;

void inet_sk_rx_dst_set(struct sock *sk, const struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);

 if (dst && dst_hold_safe(dst)) {
  sk->sk_rx_dst = dst;
  inet_sk(sk)->rx_dst_ifindex = skb->skb_iif;
 }
}
