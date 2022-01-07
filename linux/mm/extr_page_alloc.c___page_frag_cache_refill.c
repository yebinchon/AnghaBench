
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_frag_cache {int * va; int size; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 int NUMA_NO_NODE ;
 int PAGE_FRAG_CACHE_MAX_ORDER ;
 int PAGE_FRAG_CACHE_MAX_SIZE ;
 int PAGE_SIZE ;
 int __GFP_COMP ;
 int __GFP_NOMEMALLOC ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 struct page* alloc_pages_node (int ,int,int ) ;
 int * page_address (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct page *__page_frag_cache_refill(struct page_frag_cache *nc,
          gfp_t gfp_mask)
{
 struct page *page = ((void*)0);
 gfp_t gfp = gfp_mask;
 if (unlikely(!page))
  page = alloc_pages_node(NUMA_NO_NODE, gfp, 0);

 nc->va = page ? page_address(page) : ((void*)0);

 return page;
}
