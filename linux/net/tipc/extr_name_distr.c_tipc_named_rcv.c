
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;
struct tipc_net {int nametbl_lock; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct distr_item {int dummy; } ;


 int ITEM_SIZE ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ msg_data (struct tipc_msg*) ;
 int msg_data_sz (struct tipc_msg*) ;
 int msg_orignode (struct tipc_msg*) ;
 int msg_type (struct tipc_msg*) ;
 struct tipc_net* net_generic (struct net*,int ) ;
 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;
 int skb_linearize (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_net_id ;
 int tipc_update_nametbl (struct net*,struct distr_item*,int ,int) ;

void tipc_named_rcv(struct net *net, struct sk_buff_head *inputq)
{
 struct tipc_net *tn = net_generic(net, tipc_net_id);
 struct tipc_msg *msg;
 struct distr_item *item;
 uint count;
 u32 node;
 struct sk_buff *skb;
 int mtype;

 spin_lock_bh(&tn->nametbl_lock);
 for (skb = skb_dequeue(inputq); skb; skb = skb_dequeue(inputq)) {
  skb_linearize(skb);
  msg = buf_msg(skb);
  mtype = msg_type(msg);
  item = (struct distr_item *)msg_data(msg);
  count = msg_data_sz(msg) / ITEM_SIZE;
  node = msg_orignode(msg);
  while (count--) {
   tipc_update_nametbl(net, item, node, mtype);
   item++;
  }
  kfree_skb(skb);
 }
 spin_unlock_bh(&tn->nametbl_lock);
}
