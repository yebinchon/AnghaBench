
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 scalar_t__ tipc_msg_reverse (int ,struct sk_buff**,int) ;
 int tipc_own_addr (struct net*) ;

void tipc_skb_reject(struct net *net, int err, struct sk_buff *skb,
       struct sk_buff_head *xmitq)
{
 if (tipc_msg_reverse(tipc_own_addr(net), &skb, err))
  __skb_queue_tail(xmitq, skb);
}
