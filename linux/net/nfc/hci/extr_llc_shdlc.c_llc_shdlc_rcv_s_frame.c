
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int qlen; } ;
struct llc_shdlc {scalar_t__ state; int rnr; TYPE_1__ send_q; } ;
typedef enum sframe_type { ____Placeholder_sframe_type } sframe_type ;


 scalar_t__ SHDLC_CONNECTED ;



 struct sk_buff* llc_shdlc_alloc_skb (struct llc_shdlc*,int ) ;
 int llc_shdlc_rcv_ack (struct llc_shdlc*,int) ;
 int llc_shdlc_rcv_rej (struct llc_shdlc*,int) ;
 int skb_queue_tail (TYPE_1__*,struct sk_buff*) ;

__attribute__((used)) static void llc_shdlc_rcv_s_frame(struct llc_shdlc *shdlc,
      enum sframe_type s_frame_type, int nr)
{
 struct sk_buff *skb;

 if (shdlc->state != SHDLC_CONNECTED)
  return;

 switch (s_frame_type) {
 case 128:
  llc_shdlc_rcv_ack(shdlc, nr);
  if (shdlc->rnr == 1) {
   shdlc->rnr = 0;
   if (shdlc->send_q.qlen == 0) {
    skb = llc_shdlc_alloc_skb(shdlc, 0);
    if (skb)
     skb_queue_tail(&shdlc->send_q, skb);
   }
  }
  break;
 case 130:
  llc_shdlc_rcv_rej(shdlc, nr);
  break;
 case 129:
  llc_shdlc_rcv_ack(shdlc, nr);
  shdlc->rnr = 1;
  break;
 default:
  break;
 }
}
