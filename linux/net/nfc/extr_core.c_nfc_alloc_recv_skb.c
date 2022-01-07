
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int gfp_t ;


 struct sk_buff* alloc_skb (unsigned int,int ) ;
 int skb_reserve (struct sk_buff*,int) ;

struct sk_buff *nfc_alloc_recv_skb(unsigned int size, gfp_t gfp)
{
 struct sk_buff *skb;
 unsigned int total_size;

 total_size = size + 1;
 skb = alloc_skb(total_size, gfp);

 if (skb)
  skb_reserve(skb, 1);

 return skb;
}
