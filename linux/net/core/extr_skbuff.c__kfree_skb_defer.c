
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct napi_alloc_cache {scalar_t__ skb_count; struct sk_buff** skb_cache; } ;


 scalar_t__ NAPI_SKB_CACHE_SIZE ;
 int kmem_cache_free_bulk (int ,scalar_t__,struct sk_buff**) ;
 int napi_alloc_cache ;
 int prefetchw (struct sk_buff*) ;
 int skb_release_all (struct sk_buff*) ;
 int skbuff_head_cache ;
 struct napi_alloc_cache* this_cpu_ptr (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void _kfree_skb_defer(struct sk_buff *skb)
{
 struct napi_alloc_cache *nc = this_cpu_ptr(&napi_alloc_cache);


 skb_release_all(skb);


 nc->skb_cache[nc->skb_count++] = skb;







 if (unlikely(nc->skb_count == NAPI_SKB_CACHE_SIZE)) {
  kmem_cache_free_bulk(skbuff_head_cache, NAPI_SKB_CACHE_SIZE,
         nc->skb_cache);
  nc->skb_count = 0;
 }
}
