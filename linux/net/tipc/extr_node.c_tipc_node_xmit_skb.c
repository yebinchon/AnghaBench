
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int tipc_node_xmit (struct net*,struct sk_buff_head*,int ,int ) ;

int tipc_node_xmit_skb(struct net *net, struct sk_buff *skb, u32 dnode,
         u32 selector)
{
 struct sk_buff_head head;

 __skb_queue_head_init(&head);
 __skb_queue_tail(&head, skb);
 tipc_node_xmit(net, &head, dnode, selector);
 return 0;
}
