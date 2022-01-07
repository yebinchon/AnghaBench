
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct cfpkt {int dummy; } ;


 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 struct cfpkt* skb_to_pkt (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct cfpkt *cfpkt_create_pfx(u16 len, u16 pfx)
{
 struct sk_buff *skb;

 skb = alloc_skb(len + pfx, GFP_ATOMIC);
 if (unlikely(skb == ((void*)0)))
  return ((void*)0);

 skb_reserve(skb, pfx);
 return skb_to_pkt(skb);
}
