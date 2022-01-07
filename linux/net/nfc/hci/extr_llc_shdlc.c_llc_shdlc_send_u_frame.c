
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct llc_shdlc {int (* xmit_to_drv ) (int ,struct sk_buff*) ;int hdev; } ;
typedef enum uframe_modifier { ____Placeholder_uframe_modifier } uframe_modifier ;


 int SHDLC_CONTROL_HEAD_U ;
 int kfree_skb (struct sk_buff*) ;
 int pr_debug (char*,int) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int stub1 (int ,struct sk_buff*) ;

__attribute__((used)) static int llc_shdlc_send_u_frame(struct llc_shdlc *shdlc,
      struct sk_buff *skb,
      enum uframe_modifier uframe_modifier)
{
 int r;

 pr_debug("uframe_modifier=%d\n", uframe_modifier);

 *(u8 *)skb_push(skb, 1) = SHDLC_CONTROL_HEAD_U | uframe_modifier;

 r = shdlc->xmit_to_drv(shdlc->hdev, skb);

 kfree_skb(skb);

 return r;
}
