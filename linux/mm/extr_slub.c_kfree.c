
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int slab_cache; } ;


 int BUG_ON (int) ;
 int NR_SLAB_UNRECLAIMABLE ;
 int PageCompound (struct page*) ;
 int PageSlab (struct page*) ;
 int ZERO_OR_NULL_PTR (void const*) ;
 int _RET_IP_ ;
 int __free_pages (struct page*,unsigned int) ;
 unsigned int compound_order (struct page*) ;
 int kfree_hook (void*) ;
 int mod_node_page_state (int ,int ,int) ;
 int page_pgdat (struct page*) ;
 int slab_free (int ,struct page*,void*,int *,int,int ) ;
 int trace_kfree (int ,void const*) ;
 scalar_t__ unlikely (int) ;
 struct page* virt_to_head_page (void const*) ;

void kfree(const void *x)
{
 struct page *page;
 void *object = (void *)x;

 trace_kfree(_RET_IP_, x);

 if (unlikely(ZERO_OR_NULL_PTR(x)))
  return;

 page = virt_to_head_page(x);
 if (unlikely(!PageSlab(page))) {
  unsigned int order = compound_order(page);

  BUG_ON(!PageCompound(page));
  kfree_hook(object);
  mod_node_page_state(page_pgdat(page), NR_SLAB_UNRECLAIMABLE,
        -(1 << order));
  __free_pages(page, order);
  return;
 }
 slab_free(page->slab_cache, page, object, ((void*)0), 1, _RET_IP_);
}
