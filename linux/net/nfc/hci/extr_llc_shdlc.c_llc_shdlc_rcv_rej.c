
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_shdlc {int dnr; int t2_active; int ack_pending_q; int t2_timer; int ns; } ;


 int del_timer_sync (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int llc_shdlc_requeue_ack_pending (struct llc_shdlc*) ;
 scalar_t__ llc_shdlc_x_lteq_y_lt_z (int,int,int ) ;
 int pr_debug (char*,...) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void llc_shdlc_rcv_rej(struct llc_shdlc *shdlc, int y_nr)
{
 struct sk_buff *skb;

 pr_debug("remote asks retransmission from frame %d\n", y_nr);

 if (llc_shdlc_x_lteq_y_lt_z(shdlc->dnr, y_nr, shdlc->ns)) {
  if (shdlc->t2_active) {
   del_timer_sync(&shdlc->t2_timer);
   shdlc->t2_active = 0;
   pr_debug("Stopped T2(retransmit)\n");
  }

  if (shdlc->dnr != y_nr) {
   while ((shdlc->dnr = ((shdlc->dnr + 1) % 8)) != y_nr) {
    skb = skb_dequeue(&shdlc->ack_pending_q);
    kfree_skb(skb);
   }
  }

  llc_shdlc_requeue_ack_pending(shdlc);
 }
}
