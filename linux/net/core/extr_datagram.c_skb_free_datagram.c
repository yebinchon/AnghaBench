
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int consume_skb (struct sk_buff*) ;
 int sk_mem_reclaim_partial (struct sock*) ;

void skb_free_datagram(struct sock *sk, struct sk_buff *skb)
{
 consume_skb(skb);
 sk_mem_reclaim_partial(sk);
}
