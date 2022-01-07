
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct tipc_node {int state; int sync_point; int capabilities; TYPE_1__* links; } ;
struct tipc_msg {int dummy; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {struct tipc_link* link; } ;


 int FAILOVER_MSG ;
 int LINK_FAILOVER_END_EVT ;
 int LINK_PROTOCOL ;
 int LINK_SYNCH_BEGIN_EVT ;
 int LINK_SYNCH_END_EVT ;
 int MAX_BEARERS ;
 int NODE_FAILINGOVER ;
 int NODE_FAILOVER_END_EVT ;
 int NODE_SYNCHING ;
 int NODE_SYNCH_BEGIN_EVT ;
 int NODE_SYNCH_END_EVT ;
 int PEER_ESTABL_CONTACT_EVT ;
 int PEER_LOST_CONTACT_EVT ;
 int SELF_DOWN_PEER_LEAVING ;
 int SELF_LEAVING_PEER_DOWN ;
 int SELF_UP_PEER_COMING ;
 int SELF_UP_PEER_UP ;
 int SYNCH_MSG ;
 int TIPC_DUMP_NONE ;
 int TIPC_TUNNEL_ENHANCED ;
 int TUNNEL_PROTOCOL ;
 int __tipc_node_link_down (struct tipc_node*,int*,struct sk_buff_head*,struct tipc_media_addr**) ;
 int __tipc_node_link_up (struct tipc_node*,int,struct sk_buff_head*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 scalar_t__ less (int,int) ;
 scalar_t__ likely (int) ;
 scalar_t__ more (int,int) ;
 struct tipc_msg* msg_inner_hdr (struct tipc_msg*) ;
 int msg_msgcnt (struct tipc_msg*) ;
 int msg_peer_link_is_up (struct tipc_msg*) ;
 scalar_t__ msg_peer_node_is_up (struct tipc_msg*) ;
 int msg_seqno (struct tipc_msg*) ;
 int msg_syncpt (struct tipc_msg*) ;
 int msg_type (struct tipc_msg*) ;
 int msg_user (struct tipc_msg*) ;
 int skb_queue_len (int ) ;
 int tipc_link_fsm_evt (struct tipc_link*,int ) ;
 int tipc_link_inputq (struct tipc_link*) ;
 int tipc_link_is_reset (struct tipc_link*) ;
 scalar_t__ tipc_link_is_synching (struct tipc_link*) ;
 scalar_t__ tipc_link_is_up (struct tipc_link*) ;
 int tipc_link_rcv_nxt (struct tipc_link*) ;
 int tipc_link_validate_msg (struct tipc_link*,struct tipc_msg*) ;
 int tipc_node_fsm_evt (struct tipc_node*,int ) ;
 int tipc_node_link_failover (struct tipc_node*,struct tipc_link*,struct tipc_link*,struct sk_buff_head*) ;
 int tipc_skb_queue_splice_tail_init (int ,int ) ;
 int trace_tipc_link_dump (struct tipc_link*,int ,char*) ;
 int trace_tipc_node_check_state (struct tipc_node*,int,char*) ;
 scalar_t__ trace_tipc_node_check_state_enabled () ;
 int trace_tipc_node_link_down (struct tipc_node*,int,char*) ;
 int trace_tipc_skb_dump (struct sk_buff*,int,char*) ;

__attribute__((used)) static bool tipc_node_check_state(struct tipc_node *n, struct sk_buff *skb,
      int bearer_id, struct sk_buff_head *xmitq)
{
 struct tipc_msg *hdr = buf_msg(skb);
 int usr = msg_user(hdr);
 int mtyp = msg_type(hdr);
 u16 oseqno = msg_seqno(hdr);
 u16 exp_pkts = msg_msgcnt(hdr);
 u16 rcv_nxt, syncpt, dlv_nxt, inputq_len;
 int state = n->state;
 struct tipc_link *l, *tnl, *pl = ((void*)0);
 struct tipc_media_addr *maddr;
 int pb_id;

 if (trace_tipc_node_check_state_enabled()) {
  trace_tipc_skb_dump(skb, 0, "skb for node state check");
  trace_tipc_node_check_state(n, 1, " ");
 }
 l = n->links[bearer_id].link;
 if (!l)
  return 0;
 rcv_nxt = tipc_link_rcv_nxt(l);


 if (likely((state == SELF_UP_PEER_UP) && (usr != TUNNEL_PROTOCOL)))
  return 1;


 for (pb_id = 0; pb_id < MAX_BEARERS; pb_id++) {
  if ((pb_id != bearer_id) && n->links[pb_id].link) {
   pl = n->links[pb_id].link;
   break;
  }
 }

 if (!tipc_link_validate_msg(l, hdr)) {
  trace_tipc_skb_dump(skb, 0, "PROTO invalid (2)!");
  trace_tipc_link_dump(l, TIPC_DUMP_NONE, "PROTO invalid (2)!");
  return 0;
 }


 if (state == SELF_UP_PEER_COMING) {
  if (!tipc_link_is_up(l))
   return 1;
  if (!msg_peer_link_is_up(hdr))
   return 1;
  tipc_node_fsm_evt(n, PEER_ESTABL_CONTACT_EVT);
 }

 if (state == SELF_DOWN_PEER_LEAVING) {
  if (msg_peer_node_is_up(hdr))
   return 0;
  tipc_node_fsm_evt(n, PEER_LOST_CONTACT_EVT);
  return 1;
 }

 if (state == SELF_LEAVING_PEER_DOWN)
  return 0;


 if ((usr != LINK_PROTOCOL) && less(oseqno, rcv_nxt))
  return 1;


 if ((usr == TUNNEL_PROTOCOL) && (mtyp == FAILOVER_MSG)) {
  syncpt = oseqno + exp_pkts - 1;
  if (pl && !tipc_link_is_reset(pl)) {
   __tipc_node_link_down(n, &pb_id, xmitq, &maddr);
   trace_tipc_node_link_down(n, 1,
        "node link down <- failover!");
   tipc_skb_queue_splice_tail_init(tipc_link_inputq(pl),
       tipc_link_inputq(l));
  }







  if (n->state != NODE_FAILINGOVER)
   tipc_node_link_failover(n, pl, l, xmitq);


  if (less(syncpt, n->sync_point))
   n->sync_point = syncpt;
 }


 if ((n->state == NODE_FAILINGOVER) && tipc_link_is_up(l)) {
  if (!more(rcv_nxt, n->sync_point))
   return 1;
  tipc_node_fsm_evt(n, NODE_FAILOVER_END_EVT);
  if (pl)
   tipc_link_fsm_evt(pl, LINK_FAILOVER_END_EVT);
  return 1;
 }


 if (!pl || !tipc_link_is_up(pl))
  return 1;


 if ((usr == TUNNEL_PROTOCOL) && (mtyp == SYNCH_MSG) && (oseqno == 1)) {
  if (n->capabilities & TIPC_TUNNEL_ENHANCED)
   syncpt = msg_syncpt(hdr);
  else
   syncpt = msg_seqno(msg_inner_hdr(hdr)) + exp_pkts - 1;
  if (!tipc_link_is_up(l))
   __tipc_node_link_up(n, bearer_id, xmitq);
  if (n->state == SELF_UP_PEER_UP) {
   n->sync_point = syncpt;
   tipc_link_fsm_evt(l, LINK_SYNCH_BEGIN_EVT);
   tipc_node_fsm_evt(n, NODE_SYNCH_BEGIN_EVT);
  }
 }


 if (n->state == NODE_SYNCHING) {
  if (tipc_link_is_synching(l)) {
   tnl = l;
  } else {
   tnl = pl;
   pl = l;
  }
  inputq_len = skb_queue_len(tipc_link_inputq(pl));
  dlv_nxt = tipc_link_rcv_nxt(pl) - inputq_len;
  if (more(dlv_nxt, n->sync_point)) {
   tipc_link_fsm_evt(tnl, LINK_SYNCH_END_EVT);
   tipc_node_fsm_evt(n, NODE_SYNCH_END_EVT);
   return 1;
  }
  if (l == pl)
   return 1;
  if ((usr == TUNNEL_PROTOCOL) && (mtyp == SYNCH_MSG))
   return 1;
  if (usr == LINK_PROTOCOL)
   return 1;
  return 0;
 }
 return 1;
}
