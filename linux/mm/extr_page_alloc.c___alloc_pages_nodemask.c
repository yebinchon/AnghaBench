
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct alloc_context {int spread_dirty_pages; int migratetype; int * nodemask; TYPE_1__* preferred_zoneref; } ;
typedef int nodemask_t ;
typedef int gfp_t ;
struct TYPE_2__ {int zone; } ;


 unsigned int ALLOC_WMARK_LOW ;
 unsigned int MAX_ORDER ;
 int WARN_ON_ONCE (int) ;
 int __GFP_ACCOUNT ;
 int __GFP_NOWARN ;
 struct page* __alloc_pages_slowpath (int,unsigned int,struct alloc_context*) ;
 int __free_pages (struct page*,unsigned int) ;
 scalar_t__ __memcg_kmem_charge (struct page*,int,unsigned int) ;
 unsigned int alloc_flags_nofragment (int ,int) ;
 int current_gfp_context (int) ;
 int finalise_ac (int,struct alloc_context*) ;
 struct page* get_page_from_freelist (int,unsigned int,unsigned int,struct alloc_context*) ;
 int gfp_allowed_mask ;
 scalar_t__ likely (struct page*) ;
 scalar_t__ memcg_kmem_enabled () ;
 int prepare_alloc_pages (int,unsigned int,int,int *,struct alloc_context*,int*,unsigned int*) ;
 int trace_mm_page_alloc (struct page*,unsigned int,int,int ) ;
 scalar_t__ unlikely (int) ;

struct page *
__alloc_pages_nodemask(gfp_t gfp_mask, unsigned int order, int preferred_nid,
       nodemask_t *nodemask)
{
 struct page *page;
 unsigned int alloc_flags = ALLOC_WMARK_LOW;
 gfp_t alloc_mask;
 struct alloc_context ac = { };





 if (unlikely(order >= MAX_ORDER)) {
  WARN_ON_ONCE(!(gfp_mask & __GFP_NOWARN));
  return ((void*)0);
 }

 gfp_mask &= gfp_allowed_mask;
 alloc_mask = gfp_mask;
 if (!prepare_alloc_pages(gfp_mask, order, preferred_nid, nodemask, &ac, &alloc_mask, &alloc_flags))
  return ((void*)0);

 finalise_ac(gfp_mask, &ac);





 alloc_flags |= alloc_flags_nofragment(ac.preferred_zoneref->zone, gfp_mask);


 page = get_page_from_freelist(alloc_mask, order, alloc_flags, &ac);
 if (likely(page))
  goto out;







 alloc_mask = current_gfp_context(gfp_mask);
 ac.spread_dirty_pages = 0;





 if (unlikely(ac.nodemask != nodemask))
  ac.nodemask = nodemask;

 page = __alloc_pages_slowpath(alloc_mask, order, &ac);

out:
 if (memcg_kmem_enabled() && (gfp_mask & __GFP_ACCOUNT) && page &&
     unlikely(__memcg_kmem_charge(page, gfp_mask, order) != 0)) {
  __free_pages(page, order);
  page = ((void*)0);
 }

 trace_mm_page_alloc(page, order, alloc_mask, ac.migratetype);

 return page;
}
