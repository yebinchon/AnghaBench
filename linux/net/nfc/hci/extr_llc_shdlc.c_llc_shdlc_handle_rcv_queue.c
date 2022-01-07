
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int* data; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct llc_shdlc {void* state; TYPE_1__ rcv_q; } ;
typedef enum uframe_modifier { ____Placeholder_uframe_modifier } uframe_modifier ;
typedef enum sframe_type { ____Placeholder_sframe_type } sframe_type ;


 void* SHDLC_CONNECTED ;


 int SHDLC_CONTROL_HEAD_MASK ;


 int SHDLC_CONTROL_M_MASK ;
 int SHDLC_CONTROL_NR_MASK ;
 int SHDLC_CONTROL_NS_MASK ;
 int SHDLC_CONTROL_TYPE_MASK ;
 void* SHDLC_HALF_CONNECTED ;
 int kfree_skb (struct sk_buff*) ;
 int llc_shdlc_rcv_i_frame (struct llc_shdlc*,struct sk_buff*,int,int) ;
 int llc_shdlc_rcv_s_frame (struct llc_shdlc*,int,int) ;
 int llc_shdlc_rcv_u_frame (struct llc_shdlc*,struct sk_buff*,int) ;
 int pr_debug (char*,scalar_t__) ;
 int pr_err (char*,int) ;
 struct sk_buff* skb_dequeue (TYPE_1__*) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void llc_shdlc_handle_rcv_queue(struct llc_shdlc *shdlc)
{
 struct sk_buff *skb;
 u8 control;
 int nr;
 int ns;
 enum sframe_type s_frame_type;
 enum uframe_modifier u_frame_modifier;

 if (shdlc->rcv_q.qlen)
  pr_debug("rcvQlen=%d\n", shdlc->rcv_q.qlen);

 while ((skb = skb_dequeue(&shdlc->rcv_q)) != ((void*)0)) {
  control = skb->data[0];
  skb_pull(skb, 1);
  switch (control & SHDLC_CONTROL_HEAD_MASK) {
  case 131:
  case 130:
   if (shdlc->state == SHDLC_HALF_CONNECTED)
    shdlc->state = SHDLC_CONNECTED;

   ns = (control & SHDLC_CONTROL_NS_MASK) >> 3;
   nr = control & SHDLC_CONTROL_NR_MASK;
   llc_shdlc_rcv_i_frame(shdlc, skb, ns, nr);
   break;
  case 129:
   if (shdlc->state == SHDLC_HALF_CONNECTED)
    shdlc->state = SHDLC_CONNECTED;

   s_frame_type = (control & SHDLC_CONTROL_TYPE_MASK) >> 3;
   nr = control & SHDLC_CONTROL_NR_MASK;
   llc_shdlc_rcv_s_frame(shdlc, s_frame_type, nr);
   kfree_skb(skb);
   break;
  case 128:
   u_frame_modifier = control & SHDLC_CONTROL_M_MASK;
   llc_shdlc_rcv_u_frame(shdlc, skb, u_frame_modifier);
   break;
  default:
   pr_err("UNKNOWN Control=%d\n", control);
   kfree_skb(skb);
   break;
  }
 }
}
