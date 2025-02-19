
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int len; int head_frag; } ;
struct TYPE_2__ {scalar_t__ nr_frags; } ;


 unsigned int L1_CACHE_BYTES ;
 scalar_t__ MAX_SKB_FRAGS ;
 scalar_t__ skb_has_frag_list (struct sk_buff const*) ;
 unsigned int skb_headlen (struct sk_buff const*) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;

unsigned int
skb_zerocopy_headlen(const struct sk_buff *from)
{
 unsigned int hlen = 0;

 if (!from->head_frag ||
     skb_headlen(from) < L1_CACHE_BYTES ||
     skb_shinfo(from)->nr_frags >= MAX_SKB_FRAGS)
  hlen = skb_headlen(from);

 if (skb_has_frag_list(from))
  hlen = from->len;

 return hlen;
}
