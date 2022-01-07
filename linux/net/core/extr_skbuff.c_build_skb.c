
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int head_frag; int pfmemalloc; } ;


 struct sk_buff* __build_skb (void*,unsigned int) ;
 scalar_t__ page_is_pfmemalloc (int ) ;
 int virt_to_head_page (void*) ;

struct sk_buff *build_skb(void *data, unsigned int frag_size)
{
 struct sk_buff *skb = __build_skb(data, frag_size);

 if (skb && frag_size) {
  skb->head_frag = 1;
  if (page_is_pfmemalloc(virt_to_head_page(data)))
   skb->pfmemalloc = 1;
 }
 return skb;
}
