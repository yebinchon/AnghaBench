
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kmem_cache {int gfporder; int allocflags; } ;
typedef int gfp_t ;


 int SetPageSlabPfmemalloc (struct page*) ;
 int __SetPageSlab (struct page*) ;
 struct page* __alloc_pages_node (int,int ,int ) ;
 int __free_pages (struct page*,int ) ;
 scalar_t__ charge_slab_page (struct page*,int ,int ,struct kmem_cache*) ;
 scalar_t__ page_is_pfmemalloc (struct page*) ;
 scalar_t__ sk_memalloc_socks () ;
 int slab_out_of_memory (struct kmem_cache*,int ,int) ;

__attribute__((used)) static struct page *kmem_getpages(struct kmem_cache *cachep, gfp_t flags,
        int nodeid)
{
 struct page *page;

 flags |= cachep->allocflags;

 page = __alloc_pages_node(nodeid, flags, cachep->gfporder);
 if (!page) {
  slab_out_of_memory(cachep, flags, nodeid);
  return ((void*)0);
 }

 if (charge_slab_page(page, flags, cachep->gfporder, cachep)) {
  __free_pages(page, cachep->gfporder);
  return ((void*)0);
 }

 __SetPageSlab(page);

 if (sk_memalloc_socks() && page_is_pfmemalloc(page))
  SetPageSlabPfmemalloc(page);

 return page;
}
