
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; scalar_t__ head; } ;
typedef int gfp_t ;


 int BUG_ON (int ) ;
 int NUMA_NO_NODE ;
 struct sk_buff* __alloc_skb (scalar_t__,int ,int ,int ) ;
 int skb_alloc_rx_flag (struct sk_buff const*) ;
 int skb_copy_bits (struct sk_buff const*,int,scalar_t__,scalar_t__) ;
 int skb_copy_header (struct sk_buff*,struct sk_buff const*) ;
 int skb_headers_offset_update (struct sk_buff*,int) ;
 int skb_headroom (struct sk_buff const*) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,int) ;

struct sk_buff *skb_copy_expand(const struct sk_buff *skb,
    int newheadroom, int newtailroom,
    gfp_t gfp_mask)
{



 struct sk_buff *n = __alloc_skb(newheadroom + skb->len + newtailroom,
     gfp_mask, skb_alloc_rx_flag(skb),
     NUMA_NO_NODE);
 int oldheadroom = skb_headroom(skb);
 int head_copy_len, head_copy_off;

 if (!n)
  return ((void*)0);

 skb_reserve(n, newheadroom);


 skb_put(n, skb->len);

 head_copy_len = oldheadroom;
 head_copy_off = 0;
 if (newheadroom <= head_copy_len)
  head_copy_len = newheadroom;
 else
  head_copy_off = newheadroom - head_copy_len;


 BUG_ON(skb_copy_bits(skb, -head_copy_len, n->head + head_copy_off,
        skb->len + head_copy_len));

 skb_copy_header(n, skb);

 skb_headers_offset_update(n, newheadroom - oldheadroom);

 return n;
}
