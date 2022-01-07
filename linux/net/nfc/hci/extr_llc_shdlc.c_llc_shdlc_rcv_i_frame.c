
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct llc_shdlc {scalar_t__ state; int nr; int t1_active; int dnr; int ns; int hdev; int (* rcv_to_hci ) (int ,struct sk_buff*) ;int w; int t1_timer; } ;


 scalar_t__ SHDLC_CONNECTED ;
 int SHDLC_T1_VALUE_MS (int ) ;
 int S_FRAME_REJ ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int llc_shdlc_reset_t2 (struct llc_shdlc*,int) ;
 int llc_shdlc_send_s_frame (struct llc_shdlc*,int ,int) ;
 scalar_t__ llc_shdlc_x_lt_y_lteq_z (int,int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int pr_debug (char*,...) ;
 int stub1 (int ,struct sk_buff*) ;

__attribute__((used)) static void llc_shdlc_rcv_i_frame(struct llc_shdlc *shdlc,
      struct sk_buff *skb, int ns, int nr)
{
 int x_ns = ns;
 int y_nr = nr;

 pr_debug("recvd I-frame %d, remote waiting frame %d\n", ns, nr);

 if (shdlc->state != SHDLC_CONNECTED)
  goto exit;

 if (x_ns != shdlc->nr) {
  llc_shdlc_send_s_frame(shdlc, S_FRAME_REJ, shdlc->nr);
  goto exit;
 }

 if (shdlc->t1_active == 0) {
  shdlc->t1_active = 1;
  mod_timer(&shdlc->t1_timer, jiffies +
     msecs_to_jiffies(SHDLC_T1_VALUE_MS(shdlc->w)));
  pr_debug("(re)Start T1(send ack)\n");
 }

 if (skb->len) {
  shdlc->rcv_to_hci(shdlc->hdev, skb);
  skb = ((void*)0);
 }

 shdlc->nr = (shdlc->nr + 1) % 8;

 if (llc_shdlc_x_lt_y_lteq_z(shdlc->dnr, y_nr, shdlc->ns)) {
  llc_shdlc_reset_t2(shdlc, y_nr);

  shdlc->dnr = y_nr;
 }

exit:
 kfree_skb(skb);
}
