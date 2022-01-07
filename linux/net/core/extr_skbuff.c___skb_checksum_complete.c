
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; int csum_complete_sw; int csum_valid; int csum; int dev; int len; } ;
typedef int __wsum ;
typedef int __sum16 ;


 scalar_t__ CHECKSUM_COMPLETE ;
 int csum_add (int ,int ) ;
 int csum_fold (int ) ;
 scalar_t__ likely (int) ;
 int netdev_rx_csum_fault (int ,struct sk_buff*) ;
 int skb_checksum (struct sk_buff*,int ,int ,int ) ;
 int skb_shared (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__sum16 __skb_checksum_complete(struct sk_buff *skb)
{
 __wsum csum;
 __sum16 sum;

 csum = skb_checksum(skb, 0, skb->len, 0);

 sum = csum_fold(csum_add(skb->csum, csum));







 if (likely(!sum)) {
  if (unlikely(skb->ip_summed == CHECKSUM_COMPLETE) &&
      !skb->csum_complete_sw)
   netdev_rx_csum_fault(skb->dev, skb);
 }

 if (!skb_shared(skb)) {

  skb->csum = csum;
  skb->ip_summed = CHECKSUM_COMPLETE;
  skb->csum_complete_sw = 1;
  skb->csum_valid = !sum;
 }

 return sum;
}
