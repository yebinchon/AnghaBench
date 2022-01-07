
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_shdlc {int dummy; } ;


 int ENOMEM ;
 int U_FRAME_UA ;
 struct sk_buff* llc_shdlc_alloc_skb (struct llc_shdlc*,int ) ;
 int llc_shdlc_send_u_frame (struct llc_shdlc*,struct sk_buff*,int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static int llc_shdlc_connect_send_ua(struct llc_shdlc *shdlc)
{
 struct sk_buff *skb;

 pr_debug("\n");

 skb = llc_shdlc_alloc_skb(shdlc, 0);
 if (skb == ((void*)0))
  return -ENOMEM;

 return llc_shdlc_send_u_frame(shdlc, skb, U_FRAME_UA);
}
