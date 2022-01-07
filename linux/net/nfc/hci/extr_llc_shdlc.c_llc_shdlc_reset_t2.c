
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct llc_shdlc {int dnr; int t2_active; int t2_timer; int ack_pending_q; } ;


 int SHDLC_T2_VALUE_MS ;
 int del_timer_sync (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int pr_debug (char*,...) ;
 struct sk_buff* skb_dequeue (int *) ;
 struct sk_buff* skb_peek (int *) ;
 scalar_t__ skb_queue_empty (int *) ;

__attribute__((used)) static void llc_shdlc_reset_t2(struct llc_shdlc *shdlc, int y_nr)
{
 struct sk_buff *skb;
 int dnr = shdlc->dnr;

 pr_debug("release ack pending up to frame %d excluded\n", y_nr);

 while (dnr != y_nr) {
  pr_debug("release ack pending frame %d\n", dnr);

  skb = skb_dequeue(&shdlc->ack_pending_q);
  kfree_skb(skb);

  dnr = (dnr + 1) % 8;
 }

 if (skb_queue_empty(&shdlc->ack_pending_q)) {
  if (shdlc->t2_active) {
   del_timer_sync(&shdlc->t2_timer);
   shdlc->t2_active = 0;

   pr_debug
       ("All sent frames acked. Stopped T2(retransmit)\n");
  }
 } else {
  skb = skb_peek(&shdlc->ack_pending_q);

  mod_timer(&shdlc->t2_timer, *(unsigned long *)skb->cb +
     msecs_to_jiffies(SHDLC_T2_VALUE_MS));
  shdlc->t2_active = 1;

  pr_debug
      ("Start T2(retransmit) for remaining unacked sent frames\n");
 }
}
