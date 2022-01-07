
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; unsigned int len; int csum; } ;


 scalar_t__ CHECKSUM_COMPLETE ;
 int __pskb_trim (struct sk_buff*,unsigned int) ;
 int csum_block_sub (int ,int ,unsigned int) ;
 int skb_checksum (struct sk_buff*,unsigned int,int,int ) ;

int pskb_trim_rcsum_slow(struct sk_buff *skb, unsigned int len)
{
 if (skb->ip_summed == CHECKSUM_COMPLETE) {
  int delta = skb->len - len;

  skb->csum = csum_block_sub(skb->csum,
        skb_checksum(skb, len, delta, 0),
        len);
 }
 return __pskb_trim(skb, len);
}
