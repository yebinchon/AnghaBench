
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct tipc_msg {int dummy; } ;
struct TYPE_2__ {int recv_nacks; } ;
struct tipc_link {int bc_peer_is_up; scalar_t__ rcv_nxt; scalar_t__ window; int peer_caps; scalar_t__ nack_state; scalar_t__ snd_nxt; TYPE_1__ stats; struct tipc_link* bc_sndlink; } ;
struct sk_buff_head {int dummy; } ;


 scalar_t__ BC_NACK_SND_CONDITIONAL ;
 scalar_t__ BC_NACK_SND_SUPPRESS ;
 void* BC_NACK_SND_UNCONDITIONAL ;
 int TIPC_BCAST_STATE_NACK ;
 int TIPC_LINK_SND_STATE ;
 scalar_t__ TIPC_MIN_LINK_WIN ;
 scalar_t__ link_bc_rcv_gap (struct tipc_link*) ;
 int link_is_up (struct tipc_link*) ;
 scalar_t__ more (scalar_t__,scalar_t__) ;
 scalar_t__ msg_ack (struct tipc_msg*) ;
 scalar_t__ msg_bc_gap (struct tipc_msg*) ;
 scalar_t__ msg_bc_snd_nxt (struct tipc_msg*) ;
 scalar_t__ msg_bcast_ack (struct tipc_msg*) ;
 int msg_peer_node_is_up (struct tipc_msg*) ;
 int tipc_link_bc_retrans (struct tipc_link*,struct tipc_link*,scalar_t__,scalar_t__,struct sk_buff_head*) ;
 int tipc_link_build_bc_proto_msg (struct tipc_link*,int,scalar_t__,struct sk_buff_head*) ;

int tipc_link_bc_sync_rcv(struct tipc_link *l, struct tipc_msg *hdr,
     struct sk_buff_head *xmitq)
{
 struct tipc_link *snd_l = l->bc_sndlink;
 u16 peers_snd_nxt = msg_bc_snd_nxt(hdr);
 u16 from = msg_bcast_ack(hdr) + 1;
 u16 to = from + msg_bc_gap(hdr) - 1;
 int rc = 0;

 if (!link_is_up(l))
  return rc;

 if (!msg_peer_node_is_up(hdr))
  return rc;


 if (msg_ack(hdr))
  l->bc_peer_is_up = 1;

 if (!l->bc_peer_is_up)
  return rc;

 l->stats.recv_nacks++;


 if (more(peers_snd_nxt, l->rcv_nxt + l->window))
  return rc;

 rc = tipc_link_bc_retrans(snd_l, l, from, to, xmitq);

 l->snd_nxt = peers_snd_nxt;
 if (link_bc_rcv_gap(l))
  rc |= TIPC_LINK_SND_STATE;


 if (l->peer_caps & TIPC_BCAST_STATE_NACK)
  return rc;



 if (!more(peers_snd_nxt, l->rcv_nxt)) {
  l->nack_state = BC_NACK_SND_CONDITIONAL;
  return 0;
 }


 if (l->nack_state == BC_NACK_SND_SUPPRESS) {
  l->nack_state = BC_NACK_SND_UNCONDITIONAL;
  return 0;
 }


 if (l->nack_state == BC_NACK_SND_CONDITIONAL) {
  l->nack_state = BC_NACK_SND_UNCONDITIONAL;
  if ((peers_snd_nxt - l->rcv_nxt) < TIPC_MIN_LINK_WIN)
   return 0;
 }


 tipc_link_build_bc_proto_msg(l, 1, peers_snd_nxt, xmitq);
 l->nack_state = BC_NACK_SND_SUPPRESS;
 return 0;
}
