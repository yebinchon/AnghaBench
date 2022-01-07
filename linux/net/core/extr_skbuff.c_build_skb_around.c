
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int head_frag; int pfmemalloc; } ;


 struct sk_buff* __build_skb_around (struct sk_buff*,void*,unsigned int) ;
 scalar_t__ page_is_pfmemalloc (int ) ;
 scalar_t__ unlikely (int) ;
 int virt_to_head_page (void*) ;

struct sk_buff *build_skb_around(struct sk_buff *skb,
     void *data, unsigned int frag_size)
{
 if (unlikely(!skb))
  return ((void*)0);

 skb = __build_skb_around(skb, data, frag_size);

 if (skb && frag_size) {
  skb->head_frag = 1;
  if (page_is_pfmemalloc(virt_to_head_page(data)))
   skb->pfmemalloc = 1;
 }
 return skb;
}
