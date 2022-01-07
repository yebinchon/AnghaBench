
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_shdlc {int sm_work; int rcv_q; int hard_fault; } ;


 int EREMOTEIO ;
 int SHDLC_DUMP_SKB (char*,struct sk_buff*) ;
 int pr_err (char*) ;
 int schedule_work (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void llc_shdlc_recv_frame(struct llc_shdlc *shdlc, struct sk_buff *skb)
{
 if (skb == ((void*)0)) {
  pr_err("NULL Frame -> link is dead\n");
  shdlc->hard_fault = -EREMOTEIO;
 } else {
  SHDLC_DUMP_SKB("incoming frame", skb);
  skb_queue_tail(&shdlc->rcv_q, skb);
 }

 schedule_work(&shdlc->sm_work);
}
