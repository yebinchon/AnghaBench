
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_checksum_ops {int combine; int update; } ;
struct sk_buff {int dummy; } ;
typedef int __wsum ;


 int __skb_checksum (struct sk_buff const*,int,int,int ,struct skb_checksum_ops const*) ;
 int csum_block_add_ext ;
 int csum_partial_ext ;

__wsum skb_checksum(const struct sk_buff *skb, int offset,
      int len, __wsum csum)
{
 const struct skb_checksum_ops ops = {
  .update = csum_partial_ext,
  .combine = csum_block_add_ext,
 };

 return __skb_checksum(skb, offset, len, csum, &ops);
}
