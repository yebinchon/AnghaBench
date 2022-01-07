
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int NR_SLAB_UNRECLAIMABLE ;
 int NUMA_NO_NODE ;
 struct page* __alloc_pages_node (int,int ,int) ;
 struct page* alloc_pages (int ,int) ;
 int mod_node_page_state (int ,int ,int) ;
 void* page_address (struct page*) ;
 int page_pgdat (struct page*) ;

__attribute__((used)) static void *slob_new_pages(gfp_t gfp, int order, int node)
{
 struct page *page;






  page = alloc_pages(gfp, order);

 if (!page)
  return ((void*)0);

 mod_node_page_state(page_pgdat(page), NR_SLAB_UNRECLAIMABLE,
       1 << order);
 return page_address(page);
}
