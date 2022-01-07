
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct tipc_member {int state; int bc_rcv_nxt; struct sk_buff_head deferredq; int instance; } ;
struct tipc_group {int events; int instance; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int orig_member; } ;


 int GRP_ACK_MSG ;
 int MBR_LEAVING ;




 TYPE_1__* TIPC_SKB_CB (struct sk_buff*) ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_purge (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ less (int ,int ) ;
 scalar_t__ more (int ,int ) ;
 int msg_blocks (struct tipc_msg*) ;
 int msg_grp_bc_ack_req (struct tipc_msg*) ;
 int msg_grp_bc_seqno (struct tipc_msg*) ;
 int msg_in_group (struct tipc_msg*) ;
 int msg_nameinst (struct tipc_msg*) ;
 int msg_orignode (struct tipc_msg*) ;
 int msg_origport (struct tipc_msg*) ;
 int msg_type (struct tipc_msg*) ;
 struct sk_buff* skb_peek (struct sk_buff_head*) ;
 int tipc_group_delete_member (struct tipc_group*,struct tipc_member*) ;
 struct tipc_member* tipc_group_find_member (struct tipc_group*,int ,int ) ;
 int tipc_group_is_sender (struct tipc_member*) ;
 int tipc_group_proto_xmit (struct tipc_group*,struct tipc_member*,int ,struct sk_buff_head*) ;
 int tipc_group_sort_msg (struct sk_buff*,struct sk_buff_head*) ;
 int tipc_group_update_rcv_win (struct tipc_group*,int,int ,int ,struct sk_buff_head*) ;

void tipc_group_filter_msg(struct tipc_group *grp, struct sk_buff_head *inputq,
      struct sk_buff_head *xmitq)
{
 struct sk_buff *skb = __skb_dequeue(inputq);
 bool ack, deliver, update, leave = 0;
 struct sk_buff_head *defq;
 struct tipc_member *m;
 struct tipc_msg *hdr;
 u32 node, port;
 int mtyp, blks;

 if (!skb)
  return;

 hdr = buf_msg(skb);
 node = msg_orignode(hdr);
 port = msg_origport(hdr);

 if (!msg_in_group(hdr))
  goto drop;

 m = tipc_group_find_member(grp, node, port);
 if (!tipc_group_is_sender(m))
  goto drop;

 if (less(msg_grp_bc_seqno(hdr), m->bc_rcv_nxt))
  goto drop;

 TIPC_SKB_CB(skb)->orig_member = m->instance;
 defq = &m->deferredq;
 tipc_group_sort_msg(skb, defq);

 while ((skb = skb_peek(defq))) {
  hdr = buf_msg(skb);
  mtyp = msg_type(hdr);
  blks = msg_blocks(hdr);
  deliver = 1;
  ack = 0;
  update = 0;

  if (more(msg_grp_bc_seqno(hdr), m->bc_rcv_nxt))
   break;


  switch (mtyp) {
  case 130:
   if (msg_nameinst(hdr) != grp->instance) {
    update = 1;
    deliver = 0;
   }

  case 131:
   m->bc_rcv_nxt++;
   ack = msg_grp_bc_ack_req(hdr);
   break;
  case 128:
   break;
  case 129:
   if (m->state == MBR_LEAVING)
    leave = 1;
   if (!grp->events)
    deliver = 0;
   break;
  default:
   break;
  }


  __skb_dequeue(defq);
  if (deliver)
   __skb_queue_tail(inputq, skb);
  else
   kfree_skb(skb);

  if (ack)
   tipc_group_proto_xmit(grp, m, GRP_ACK_MSG, xmitq);

  if (leave) {
   __skb_queue_purge(defq);
   tipc_group_delete_member(grp, m);
   break;
  }
  if (!update)
   continue;

  tipc_group_update_rcv_win(grp, blks, node, port, xmitq);
 }
 return;
drop:
 kfree_skb(skb);
}
