
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int __kfree_skb (struct sk_buff*) ;
 int ip6_rcv_finish ;
 scalar_t__ xfrm_trans_queue (struct sk_buff*,int ) ;

__attribute__((used)) static int xfrm6_transport_finish2(struct net *net, struct sock *sk,
       struct sk_buff *skb)
{
 if (xfrm_trans_queue(skb, ip6_rcv_finish))
  __kfree_skb(skb);
 return -1;
}
