
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_alloc_cache {scalar_t__ skb_count; int skb_cache; } ;


 int kmem_cache_free_bulk (int ,scalar_t__,int ) ;
 int napi_alloc_cache ;
 int skbuff_head_cache ;
 struct napi_alloc_cache* this_cpu_ptr (int *) ;

void __kfree_skb_flush(void)
{
 struct napi_alloc_cache *nc = this_cpu_ptr(&napi_alloc_cache);


 if (nc->skb_count) {
  kmem_cache_free_bulk(skbuff_head_cache, nc->skb_count,
         nc->skb_cache);
  nc->skb_count = 0;
 }
}
