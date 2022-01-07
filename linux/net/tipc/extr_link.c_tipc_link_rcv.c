
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct tipc_msg {int dummy; } ;
struct TYPE_2__ {int recv_pkts; int duplicates; } ;
struct sk_buff_head {int dummy; } ;
struct tipc_link {scalar_t__ rcv_nxt; scalar_t__ state; scalar_t__ rcv_unacked; int reasm_buf; int inputq; TYPE_1__ stats; int wakeupq; scalar_t__ silent_intv_cnt; struct sk_buff_head deferdq; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ LINK_ESTABLISHING ;
 scalar_t__ LINK_PROTOCOL ;
 int TIPC_LINK_SND_STATE ;
 int TIPC_LINK_UP_EVT ;
 scalar_t__ TIPC_MAX_LINK_WIN ;
 scalar_t__ TIPC_MIN_LINK_WIN ;
 scalar_t__ TUNNEL_PROTOCOL ;
 struct sk_buff* __tipc_skb_dequeue (struct sk_buff_head*,scalar_t__) ;
 int __tipc_skb_queue_sorted (struct sk_buff_head*,scalar_t__,struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ less (scalar_t__,scalar_t__) ;
 scalar_t__ likely (int ) ;
 int link_is_up (struct tipc_link*) ;
 int link_prepare_wakeup (struct tipc_link*) ;
 scalar_t__ more (scalar_t__,scalar_t__) ;
 int msg_ack (struct tipc_msg*) ;
 scalar_t__ msg_seqno (struct tipc_msg*) ;
 scalar_t__ msg_user (struct tipc_msg*) ;
 int skb_queue_empty (int *) ;
 int tipc_data_input (struct tipc_link*,struct sk_buff*,int ) ;
 int tipc_link_advance_backlog (struct tipc_link*,struct sk_buff_head*) ;
 int tipc_link_build_nack_msg (struct tipc_link*,struct sk_buff_head*) ;
 int tipc_link_build_state_msg (struct tipc_link*,struct sk_buff_head*) ;
 int tipc_link_input (struct tipc_link*,struct sk_buff*,int ,int *) ;
 int tipc_link_proto_rcv (struct tipc_link*,struct sk_buff*,struct sk_buff_head*) ;
 int tipc_link_release_pkts (struct tipc_link*,int ) ;
 int tipc_link_tnl_rcv (struct tipc_link*,struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

int tipc_link_rcv(struct tipc_link *l, struct sk_buff *skb,
    struct sk_buff_head *xmitq)
{
 struct sk_buff_head *defq = &l->deferdq;
 struct tipc_msg *hdr = buf_msg(skb);
 u16 seqno, rcv_nxt, win_lim;
 int rc = 0;


 if (unlikely(msg_user(hdr) == LINK_PROTOCOL))
  return tipc_link_proto_rcv(l, skb, xmitq);


 l->silent_intv_cnt = 0;

 do {
  hdr = buf_msg(skb);
  seqno = msg_seqno(hdr);
  rcv_nxt = l->rcv_nxt;
  win_lim = rcv_nxt + TIPC_MAX_LINK_WIN;

  if (unlikely(!link_is_up(l))) {
   if (l->state == LINK_ESTABLISHING)
    rc = TIPC_LINK_UP_EVT;
   goto drop;
  }


  if (unlikely(less(seqno, rcv_nxt) || more(seqno, win_lim))) {
   l->stats.duplicates++;
   goto drop;
  }


  if (likely(tipc_link_release_pkts(l, msg_ack(hdr)))) {
   tipc_link_advance_backlog(l, xmitq);
   if (unlikely(!skb_queue_empty(&l->wakeupq)))
    link_prepare_wakeup(l);
  }


  if (unlikely(seqno != rcv_nxt)) {
   __tipc_skb_queue_sorted(defq, seqno, skb);
   rc |= tipc_link_build_nack_msg(l, xmitq);
   break;
  }


  l->rcv_nxt++;
  l->stats.recv_pkts++;

  if (unlikely(msg_user(hdr) == TUNNEL_PROTOCOL))
   rc |= tipc_link_tnl_rcv(l, skb, l->inputq);
  else if (!tipc_data_input(l, skb, l->inputq))
   rc |= tipc_link_input(l, skb, l->inputq, &l->reasm_buf);
  if (unlikely(++l->rcv_unacked >= TIPC_MIN_LINK_WIN))
   rc |= tipc_link_build_state_msg(l, xmitq);
  if (unlikely(rc & ~TIPC_LINK_SND_STATE))
   break;
 } while ((skb = __tipc_skb_dequeue(defq, l->rcv_nxt)));

 return rc;
drop:
 kfree_skb(skb);
 return rc;
}
