
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct tipc_msg {int dummy; } ;
struct TYPE_2__ {int recv_nacks; } ;
struct tipc_link {int nack_state; int rcv_nxt; TYPE_1__ stats; int bc_sndlink; int net; int bc_peer_is_up; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;


 int BC_NACK_SND_SUPPRESS ;
 int STATE_MSG ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int less (int ,scalar_t__) ;
 scalar_t__ more (scalar_t__,int ) ;
 scalar_t__ msg_bcast_ack (struct tipc_msg*) ;
 scalar_t__ msg_bcgap_to (struct tipc_msg*) ;
 scalar_t__ msg_destnode (struct tipc_msg*) ;
 int msg_type (struct tipc_msg*) ;
 int tipc_link_bc_ack_rcv (struct tipc_link*,scalar_t__,struct sk_buff_head*) ;
 int tipc_link_bc_retrans (int ,struct tipc_link*,scalar_t__,scalar_t__,struct sk_buff_head*) ;
 int tipc_link_is_up (struct tipc_link*) ;
 scalar_t__ tipc_own_addr (int ) ;

int tipc_link_bc_nack_rcv(struct tipc_link *l, struct sk_buff *skb,
     struct sk_buff_head *xmitq)
{
 struct tipc_msg *hdr = buf_msg(skb);
 u32 dnode = msg_destnode(hdr);
 int mtyp = msg_type(hdr);
 u16 acked = msg_bcast_ack(hdr);
 u16 from = acked + 1;
 u16 to = msg_bcgap_to(hdr);
 u16 peers_snd_nxt = to + 1;
 int rc = 0;

 kfree_skb(skb);

 if (!tipc_link_is_up(l) || !l->bc_peer_is_up)
  return 0;

 if (mtyp != STATE_MSG)
  return 0;

 if (dnode == tipc_own_addr(l->net)) {
  tipc_link_bc_ack_rcv(l, acked, xmitq);
  rc = tipc_link_bc_retrans(l->bc_sndlink, l, from, to, xmitq);
  l->stats.recv_nacks++;
  return rc;
 }


 if (more(peers_snd_nxt, l->rcv_nxt) && !less(l->rcv_nxt, from))
  l->nack_state = BC_NACK_SND_SUPPRESS;

 return 0;
}
