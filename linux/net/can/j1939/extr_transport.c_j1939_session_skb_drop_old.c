
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {unsigned int len; } ;
struct j1939_sk_buff_cb {unsigned int offset; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {int tx_acked; } ;
struct j1939_session {TYPE_2__ skb_queue; TYPE_1__ pkt; } ;


 int __skb_unlink (struct sk_buff*,TYPE_2__*) ;
 struct j1939_sk_buff_cb* j1939_skb_to_cb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_peek (TYPE_2__*) ;
 int skb_queue_len (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void j1939_session_skb_drop_old(struct j1939_session *session)
{
 struct sk_buff *do_skb;
 struct j1939_sk_buff_cb *do_skcb;
 unsigned int offset_start;
 unsigned long flags;

 if (skb_queue_len(&session->skb_queue) < 2)
  return;

 offset_start = session->pkt.tx_acked * 7;

 spin_lock_irqsave(&session->skb_queue.lock, flags);
 do_skb = skb_peek(&session->skb_queue);
 do_skcb = j1939_skb_to_cb(do_skb);

 if ((do_skcb->offset + do_skb->len) < offset_start) {
  __skb_unlink(do_skb, &session->skb_queue);
  kfree_skb(do_skb);
 }
 spin_unlock_irqrestore(&session->skb_queue.lock, flags);
}
