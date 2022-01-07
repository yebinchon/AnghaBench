
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int * mapping; } ;
struct kmem_cache {int gfporder; } ;
struct TYPE_4__ {TYPE_1__* reclaim_state; } ;
struct TYPE_3__ {int reclaimed_slab; } ;


 int BUG_ON (int) ;
 int PageSlab (struct page*) ;
 int __ClearPageSlab (struct page*) ;
 int __ClearPageSlabPfmemalloc (struct page*) ;
 int __free_pages (struct page*,int) ;
 TYPE_2__* current ;
 int page_mapcount_reset (struct page*) ;
 int uncharge_slab_page (struct page*,int,struct kmem_cache*) ;

__attribute__((used)) static void kmem_freepages(struct kmem_cache *cachep, struct page *page)
{
 int order = cachep->gfporder;

 BUG_ON(!PageSlab(page));
 __ClearPageSlabPfmemalloc(page);
 __ClearPageSlab(page);
 page_mapcount_reset(page);
 page->mapping = ((void*)0);

 if (current->reclaim_state)
  current->reclaim_state->reclaimed_slab += 1 << order;
 uncharge_slab_page(page, order, cachep);
 __free_pages(page, order);
}
