
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_shdlc {int dummy; } ;


 int ENOMEM ;
 int SHDLC_MAX_WINDOW ;
 scalar_t__ SHDLC_SREJ_SUPPORT ;
 int U_FRAME_RSET ;
 struct sk_buff* llc_shdlc_alloc_skb (struct llc_shdlc*,int) ;
 int llc_shdlc_send_u_frame (struct llc_shdlc*,struct sk_buff*,int ) ;
 int pr_debug (char*) ;
 int skb_put_u8 (struct sk_buff*,int) ;

__attribute__((used)) static int llc_shdlc_connect_initiate(struct llc_shdlc *shdlc)
{
 struct sk_buff *skb;

 pr_debug("\n");

 skb = llc_shdlc_alloc_skb(shdlc, 2);
 if (skb == ((void*)0))
  return -ENOMEM;

 skb_put_u8(skb, SHDLC_MAX_WINDOW);
 skb_put_u8(skb, SHDLC_SREJ_SUPPORT ? 1 : 0);

 return llc_shdlc_send_u_frame(shdlc, skb, U_FRAME_RSET);
}
