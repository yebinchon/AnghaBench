
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int data_len; scalar_t__ len; int head; } ;
typedef int gfp_t ;


 int BUG_ON (int ) ;
 int NUMA_NO_NODE ;
 struct sk_buff* __alloc_skb (unsigned int,int ,int ,int ) ;
 int skb_alloc_rx_flag (struct sk_buff const*) ;
 int skb_copy_bits (struct sk_buff const*,int,int ,scalar_t__) ;
 int skb_copy_header (struct sk_buff*,struct sk_buff const*) ;
 unsigned int skb_end_offset (struct sk_buff const*) ;
 int skb_headroom (struct sk_buff const*) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,int) ;

struct sk_buff *skb_copy(const struct sk_buff *skb, gfp_t gfp_mask)
{
 int headerlen = skb_headroom(skb);
 unsigned int size = skb_end_offset(skb) + skb->data_len;
 struct sk_buff *n = __alloc_skb(size, gfp_mask,
     skb_alloc_rx_flag(skb), NUMA_NO_NODE);

 if (!n)
  return ((void*)0);


 skb_reserve(n, headerlen);

 skb_put(n, skb->len);

 BUG_ON(skb_copy_bits(skb, -headerlen, n->head, headerlen + skb->len));

 skb_copy_header(n, skb);
 return n;
}
