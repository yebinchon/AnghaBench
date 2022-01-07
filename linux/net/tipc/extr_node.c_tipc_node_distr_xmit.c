
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int buf_msg (struct sk_buff*) ;
 int msg_destnode (int ) ;
 int msg_origport (int ) ;
 int tipc_node_xmit_skb (struct net*,struct sk_buff*,int ,int ) ;

int tipc_node_distr_xmit(struct net *net, struct sk_buff_head *xmitq)
{
 struct sk_buff *skb;
 u32 selector, dnode;

 while ((skb = __skb_dequeue(xmitq))) {
  selector = msg_origport(buf_msg(skb));
  dnode = msg_destnode(buf_msg(skb));
  tipc_node_xmit_skb(net, skb, dnode, selector);
 }
 return 0;
}
