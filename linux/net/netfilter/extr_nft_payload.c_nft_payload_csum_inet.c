
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int sum ;
struct sk_buff {int dummy; } ;
typedef int __wsum ;
typedef int __sum16 ;


 int nft_csum_replace (int *,int ,int ) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int,int *,int) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,int) ;
 scalar_t__ skb_store_bits (struct sk_buff*,int,int *,int) ;

__attribute__((used)) static int nft_payload_csum_inet(struct sk_buff *skb, const u32 *src,
     __wsum fsum, __wsum tsum, int csum_offset)
{
 __sum16 sum;

 if (skb_copy_bits(skb, csum_offset, &sum, sizeof(sum)) < 0)
  return -1;

 nft_csum_replace(&sum, fsum, tsum);
 if (skb_ensure_writable(skb, csum_offset + sizeof(sum)) ||
     skb_store_bits(skb, csum_offset, &sum, sizeof(sum)) < 0)
  return -1;

 return 0;
}
