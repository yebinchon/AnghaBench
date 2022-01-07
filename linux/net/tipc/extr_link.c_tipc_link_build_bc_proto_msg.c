
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct tipc_msg {int dummy; } ;
struct tipc_link {TYPE_1__* bc_sndlink; int net; int addr; scalar_t__ rcv_nxt; int deferdq; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ snd_nxt; } ;


 int BCAST_PROTOCOL ;
 int INT_H_SIZE ;
 int STATE_MSG ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 scalar_t__ buf_seqno (struct sk_buff*) ;
 int msg_set_bcast_ack (struct tipc_msg*,scalar_t__) ;
 int msg_set_bcgap_after (struct tipc_msg*,scalar_t__) ;
 int msg_set_bcgap_to (struct tipc_msg*,scalar_t__) ;
 int msg_set_last_bcast (struct tipc_msg*,scalar_t__) ;
 int msg_set_non_seq (struct tipc_msg*,int) ;
 struct sk_buff* skb_peek (int *) ;
 struct sk_buff* tipc_msg_create (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int tipc_own_addr (int ) ;

__attribute__((used)) static bool tipc_link_build_bc_proto_msg(struct tipc_link *l, bool bcast,
      u16 peers_snd_nxt,
      struct sk_buff_head *xmitq)
{
 struct sk_buff *skb;
 struct tipc_msg *hdr;
 struct sk_buff *dfrd_skb = skb_peek(&l->deferdq);
 u16 ack = l->rcv_nxt - 1;
 u16 gap_to = peers_snd_nxt - 1;

 skb = tipc_msg_create(BCAST_PROTOCOL, STATE_MSG, INT_H_SIZE,
         0, l->addr, tipc_own_addr(l->net), 0, 0, 0);
 if (!skb)
  return 0;
 hdr = buf_msg(skb);
 msg_set_last_bcast(hdr, l->bc_sndlink->snd_nxt - 1);
 msg_set_bcast_ack(hdr, ack);
 msg_set_bcgap_after(hdr, ack);
 if (dfrd_skb)
  gap_to = buf_seqno(dfrd_skb) - 1;
 msg_set_bcgap_to(hdr, gap_to);
 msg_set_non_seq(hdr, bcast);
 __skb_queue_tail(xmitq, skb);
 return 1;
}
