
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_shdlc {scalar_t__ tx_headroom; scalar_t__ tx_tailroom; } ;


 int GFP_KERNEL ;
 scalar_t__ SHDLC_LLC_HEAD_ROOM ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *llc_shdlc_alloc_skb(struct llc_shdlc *shdlc,
        int payload_len)
{
 struct sk_buff *skb;

 skb = alloc_skb(shdlc->tx_headroom + SHDLC_LLC_HEAD_ROOM +
   shdlc->tx_tailroom + payload_len, GFP_KERNEL);
 if (skb)
  skb_reserve(skb, shdlc->tx_headroom + SHDLC_LLC_HEAD_ROOM);

 return skb;
}
