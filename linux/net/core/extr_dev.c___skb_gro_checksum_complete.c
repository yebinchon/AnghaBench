
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ ip_summed; int dev; int csum_complete_sw; } ;
typedef int __wsum ;
typedef int __sum16 ;
struct TYPE_2__ {int csum_valid; int csum; } ;


 scalar_t__ CHECKSUM_COMPLETE ;
 TYPE_1__* NAPI_GRO_CB (struct sk_buff*) ;
 int csum_add (int ,int ) ;
 int csum_fold (int ) ;
 scalar_t__ likely (int) ;
 int netdev_rx_csum_fault (int ,struct sk_buff*) ;
 int skb_checksum (struct sk_buff*,int ,int ,int ) ;
 int skb_gro_len (struct sk_buff*) ;
 int skb_gro_offset (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__sum16 __skb_gro_checksum_complete(struct sk_buff *skb)
{
 __wsum wsum;
 __sum16 sum;

 wsum = skb_checksum(skb, skb_gro_offset(skb), skb_gro_len(skb), 0);


 sum = csum_fold(csum_add(NAPI_GRO_CB(skb)->csum, wsum));

 if (likely(!sum)) {
  if (unlikely(skb->ip_summed == CHECKSUM_COMPLETE) &&
      !skb->csum_complete_sw)
   netdev_rx_csum_fault(skb->dev, skb);
 }

 NAPI_GRO_CB(skb)->csum = wsum;
 NAPI_GRO_CB(skb)->csum_valid = 1;

 return sum;
}
