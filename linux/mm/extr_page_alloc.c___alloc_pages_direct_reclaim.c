
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct alloc_context {int dummy; } ;
typedef int gfp_t ;


 unsigned long __perform_reclaim (int ,unsigned int,struct alloc_context const*) ;
 int drain_all_pages (int *) ;
 struct page* get_page_from_freelist (int ,unsigned int,unsigned int,struct alloc_context const*) ;
 scalar_t__ unlikely (int) ;
 int unreserve_highatomic_pageblock (struct alloc_context const*,int) ;

__attribute__((used)) static inline struct page *
__alloc_pages_direct_reclaim(gfp_t gfp_mask, unsigned int order,
  unsigned int alloc_flags, const struct alloc_context *ac,
  unsigned long *did_some_progress)
{
 struct page *page = ((void*)0);
 bool drained = 0;

 *did_some_progress = __perform_reclaim(gfp_mask, order, ac);
 if (unlikely(!(*did_some_progress)))
  return ((void*)0);

retry:
 page = get_page_from_freelist(gfp_mask, order, alloc_flags, ac);






 if (!page && !drained) {
  unreserve_highatomic_pageblock(ac, 0);
  drain_all_pages(((void*)0));
  drained = 1;
  goto retry;
 }

 return page;
}
