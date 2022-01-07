
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_msg {int dummy; } ;
struct TYPE_2__ {int recv_fragmented; int recv_fragments; int recv_bundled; int recv_bundles; } ;
struct tipc_link {int net; int bc_rcvlink; TYPE_1__ stats; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;


 int BCAST_PROTOCOL ;
 int LINK_FAILURE_EVT ;
 int MSG_BUNDLER ;
 int MSG_FRAGMENTER ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int link_is_bc_rcvlink (struct tipc_link*) ;
 scalar_t__ msg_msgcnt (struct tipc_msg*) ;
 int msg_user (struct tipc_msg*) ;
 int pr_warn_ratelimited (char*) ;
 int skb_queue_head_init (struct sk_buff_head*) ;
 int tipc_bcast_lock (int ) ;
 int tipc_bcast_unlock (int ) ;
 scalar_t__ tipc_buf_append (struct sk_buff**,struct sk_buff**) ;
 int tipc_data_input (struct tipc_link*,struct sk_buff*,struct sk_buff_head*) ;
 int tipc_link_bc_init_rcv (int ,struct tipc_msg*) ;
 int tipc_link_fsm_evt (struct tipc_link*,int ) ;
 scalar_t__ tipc_msg_extract (struct sk_buff*,struct sk_buff**,int*) ;
 int tipc_skb_queue_splice_tail (struct sk_buff_head*,struct sk_buff_head*) ;

__attribute__((used)) static int tipc_link_input(struct tipc_link *l, struct sk_buff *skb,
      struct sk_buff_head *inputq,
      struct sk_buff **reasm_skb)
{
 struct tipc_msg *hdr = buf_msg(skb);
 struct sk_buff *iskb;
 struct sk_buff_head tmpq;
 int usr = msg_user(hdr);
 int pos = 0;

 if (usr == MSG_BUNDLER) {
  skb_queue_head_init(&tmpq);
  l->stats.recv_bundles++;
  l->stats.recv_bundled += msg_msgcnt(hdr);
  while (tipc_msg_extract(skb, &iskb, &pos))
   tipc_data_input(l, iskb, &tmpq);
  tipc_skb_queue_splice_tail(&tmpq, inputq);
  return 0;
 } else if (usr == MSG_FRAGMENTER) {
  l->stats.recv_fragments++;
  if (tipc_buf_append(reasm_skb, &skb)) {
   l->stats.recv_fragmented++;
   tipc_data_input(l, skb, inputq);
  } else if (!*reasm_skb && !link_is_bc_rcvlink(l)) {
   pr_warn_ratelimited("Unable to build fragment list\n");
   return tipc_link_fsm_evt(l, LINK_FAILURE_EVT);
  }
  return 0;
 } else if (usr == BCAST_PROTOCOL) {
  tipc_bcast_lock(l->net);
  tipc_link_bc_init_rcv(l->bc_rcvlink, hdr);
  tipc_bcast_unlock(l->net);
 }

 kfree_skb(skb);
 return 0;
}
