
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct inet_cork_full {int dummy; } ;
struct inet6_cork {int dummy; } ;


 int IP6_INC_STATS (int ,int ,int ) ;
 int IPSTATS_MIB_OUTDISCARDS ;
 struct sk_buff* __skb_dequeue_tail (struct sk_buff_head*) ;
 int ip6_cork_release (struct inet_cork_full*,struct inet6_cork*) ;
 int ip6_dst_idev (scalar_t__) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ skb_dst (struct sk_buff*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static void __ip6_flush_pending_frames(struct sock *sk,
           struct sk_buff_head *queue,
           struct inet_cork_full *cork,
           struct inet6_cork *v6_cork)
{
 struct sk_buff *skb;

 while ((skb = __skb_dequeue_tail(queue)) != ((void*)0)) {
  if (skb_dst(skb))
   IP6_INC_STATS(sock_net(sk), ip6_dst_idev(skb_dst(skb)),
          IPSTATS_MIB_OUTDISCARDS);
  kfree_skb(skb);
 }

 ip6_cork_release(cork, v6_cork);
}
