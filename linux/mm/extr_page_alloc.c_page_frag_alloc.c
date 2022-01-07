
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_frag_cache {void* va; unsigned int size; unsigned int offset; void* pagecnt_bias; int pfmemalloc; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 void* PAGE_FRAG_CACHE_MAX_SIZE ;
 unsigned int PAGE_SIZE ;
 struct page* __page_frag_cache_refill (struct page_frag_cache*,int ) ;
 int page_is_pfmemalloc (struct page*) ;
 int page_ref_add (struct page*,void*) ;
 int page_ref_sub_and_test (struct page*,void*) ;
 int set_page_count (struct page*,void*) ;
 scalar_t__ unlikely (int) ;
 struct page* virt_to_page (void*) ;

void *page_frag_alloc(struct page_frag_cache *nc,
        unsigned int fragsz, gfp_t gfp_mask)
{
 unsigned int size = PAGE_SIZE;
 struct page *page;
 int offset;

 if (unlikely(!nc->va)) {
refill:
  page = __page_frag_cache_refill(nc, gfp_mask);
  if (!page)
   return ((void*)0);
  page_ref_add(page, PAGE_FRAG_CACHE_MAX_SIZE);


  nc->pfmemalloc = page_is_pfmemalloc(page);
  nc->pagecnt_bias = PAGE_FRAG_CACHE_MAX_SIZE + 1;
  nc->offset = size;
 }

 offset = nc->offset - fragsz;
 if (unlikely(offset < 0)) {
  page = virt_to_page(nc->va);

  if (!page_ref_sub_and_test(page, nc->pagecnt_bias))
   goto refill;






  set_page_count(page, PAGE_FRAG_CACHE_MAX_SIZE + 1);


  nc->pagecnt_bias = PAGE_FRAG_CACHE_MAX_SIZE + 1;
  offset = size - fragsz;
 }

 nc->pagecnt_bias--;
 nc->offset = offset;

 return nc->va + offset;
}
