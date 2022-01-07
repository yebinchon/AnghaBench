
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_shdlc {int dnr; int ns; int send_q; int ack_pending_q; } ;


 int pr_debug (char*,int ) ;
 struct sk_buff* skb_dequeue_tail (int *) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_queue_head (int *,struct sk_buff*) ;

__attribute__((used)) static void llc_shdlc_requeue_ack_pending(struct llc_shdlc *shdlc)
{
 struct sk_buff *skb;

 pr_debug("ns reset to %d\n", shdlc->dnr);

 while ((skb = skb_dequeue_tail(&shdlc->ack_pending_q))) {
  skb_pull(skb, 1);
  skb_queue_head(&shdlc->send_q, skb);
 }
 shdlc->ns = shdlc->dnr;
}
