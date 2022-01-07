
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct tipc_link {int peer_bearer_id; int addr; int net; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;


 int BASIC_H_SIZE ;
 int FAILOVER_MSG ;
 int INT_H_SIZE ;
 int TIPC_DIRECT_MSG ;
 int TIPC_ERR_NO_PORT ;
 int TIPC_LOW_IMPORTANCE ;
 int TUNNEL_PROTOCOL ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int link_co_err ;
 scalar_t__ msg_data (struct tipc_msg*) ;
 int msg_set_bearer_id (struct tipc_msg*,int ) ;
 int msg_set_errcode (struct tipc_msg*,int ) ;
 int msg_set_msgcnt (struct tipc_msg*,int) ;
 int pr_warn (char*,int ) ;
 int tipc_link_xmit (struct tipc_link*,struct sk_buff_head*,struct sk_buff_head*) ;
 struct sk_buff* tipc_msg_create (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int tipc_msg_init (int ,struct tipc_msg*,int ,int ,int ,int ) ;
 int tipc_own_addr (int ) ;

void tipc_link_create_dummy_tnl_msg(struct tipc_link *l,
        struct sk_buff_head *xmitq)
{
 u32 onode = tipc_own_addr(l->net);
 struct tipc_msg *hdr, *ihdr;
 struct sk_buff_head tnlq;
 struct sk_buff *skb;
 u32 dnode = l->addr;

 __skb_queue_head_init(&tnlq);
 skb = tipc_msg_create(TUNNEL_PROTOCOL, FAILOVER_MSG,
         INT_H_SIZE, BASIC_H_SIZE,
         dnode, onode, 0, 0, 0);
 if (!skb) {
  pr_warn("%sunable to create tunnel packet\n", link_co_err);
  return;
 }

 hdr = buf_msg(skb);
 msg_set_msgcnt(hdr, 1);
 msg_set_bearer_id(hdr, l->peer_bearer_id);

 ihdr = (struct tipc_msg *)msg_data(hdr);
 tipc_msg_init(onode, ihdr, TIPC_LOW_IMPORTANCE, TIPC_DIRECT_MSG,
        BASIC_H_SIZE, dnode);
 msg_set_errcode(ihdr, TIPC_ERR_NO_PORT);
 __skb_queue_tail(&tnlq, skb);
 tipc_link_xmit(l, &tnlq, xmitq);
}
