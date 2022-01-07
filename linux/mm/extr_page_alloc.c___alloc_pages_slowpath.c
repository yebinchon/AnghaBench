
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct alloc_context {scalar_t__ migratetype; int * nodemask; int high_zoneidx; int zonelist; TYPE_1__* preferred_zoneref; } ;
typedef int gfp_t ;
typedef enum compact_result { ____Placeholder_compact_result } compact_result ;
typedef enum compact_priority { ____Placeholder_compact_priority } compact_priority ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int zone; } ;


 unsigned int ALLOC_CPUSET ;
 int ALLOC_HARDER ;
 unsigned int ALLOC_KSWAPD ;
 unsigned int ALLOC_OOM ;
 int COMPACT_DEFERRED ;
 int COMPACT_SKIPPED ;
 int DEF_COMPACT_PRIORITY ;
 int INIT_COMPACT_PRIORITY ;
 scalar_t__ MIGRATE_MOVABLE ;
 unsigned int PAGE_ALLOC_COSTLY_ORDER ;
 int PF_MEMALLOC ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __GFP_ATOMIC ;
 int __GFP_DIRECT_RECLAIM ;
 int __GFP_IO ;
 int __GFP_NOFAIL ;
 int __GFP_NOMEMALLOC ;
 int __GFP_NORETRY ;
 int __GFP_RETRY_MAYFAIL ;
 struct page* __alloc_pages_cpuset_fallback (int,unsigned int,int ,struct alloc_context*) ;
 struct page* __alloc_pages_direct_compact (int,unsigned int,unsigned int,struct alloc_context*,int,int*) ;
 struct page* __alloc_pages_direct_reclaim (int,unsigned int,unsigned int,struct alloc_context*,unsigned long*) ;
 struct page* __alloc_pages_may_oom (int,unsigned int,struct alloc_context*,unsigned long*) ;
 int __gfp_pfmemalloc_flags (int) ;
 scalar_t__ check_retry_cpuset (unsigned int,struct alloc_context*) ;
 int cond_resched () ;
 TYPE_2__* current ;
 void* first_zones_zonelist (int ,int ,int *) ;
 struct page* get_page_from_freelist (int,unsigned int,unsigned int,struct alloc_context*) ;
 int gfp_pfmemalloc_allowed (int) ;
 unsigned int gfp_to_alloc_flags (int) ;
 unsigned int pageblock_order ;
 unsigned int read_mems_allowed_begin () ;
 scalar_t__ should_compact_retry (struct alloc_context*,unsigned int,unsigned int,int,int*,int*) ;
 scalar_t__ should_reclaim_retry (int,unsigned int,struct alloc_context*,unsigned int,int,int*) ;
 scalar_t__ tsk_is_oom_victim (TYPE_2__*) ;
 int wake_all_kswapds (unsigned int,int,struct alloc_context*) ;
 int warn_alloc (int,int *,char*,unsigned int) ;

__attribute__((used)) static inline struct page *
__alloc_pages_slowpath(gfp_t gfp_mask, unsigned int order,
      struct alloc_context *ac)
{
 bool can_direct_reclaim = gfp_mask & __GFP_DIRECT_RECLAIM;
 const bool costly_order = order > PAGE_ALLOC_COSTLY_ORDER;
 struct page *page = ((void*)0);
 unsigned int alloc_flags;
 unsigned long did_some_progress;
 enum compact_priority compact_priority;
 enum compact_result compact_result;
 int compaction_retries;
 int no_progress_loops;
 unsigned int cpuset_mems_cookie;
 int reserve_flags;





 if (WARN_ON_ONCE((gfp_mask & (__GFP_ATOMIC|__GFP_DIRECT_RECLAIM)) ==
    (__GFP_ATOMIC|__GFP_DIRECT_RECLAIM)))
  gfp_mask &= ~__GFP_ATOMIC;

retry_cpuset:
 compaction_retries = 0;
 no_progress_loops = 0;
 compact_priority = DEF_COMPACT_PRIORITY;
 cpuset_mems_cookie = read_mems_allowed_begin();






 alloc_flags = gfp_to_alloc_flags(gfp_mask);







 ac->preferred_zoneref = first_zones_zonelist(ac->zonelist,
     ac->high_zoneidx, ac->nodemask);
 if (!ac->preferred_zoneref->zone)
  goto nopage;

 if (alloc_flags & ALLOC_KSWAPD)
  wake_all_kswapds(order, gfp_mask, ac);





 page = get_page_from_freelist(gfp_mask, order, alloc_flags, ac);
 if (page)
  goto got_pg;
 if (can_direct_reclaim &&
   (costly_order ||
      (order > 0 && ac->migratetype != MIGRATE_MOVABLE))
   && !gfp_pfmemalloc_allowed(gfp_mask)) {
  page = __alloc_pages_direct_compact(gfp_mask, order,
      alloc_flags, ac,
      INIT_COMPACT_PRIORITY,
      &compact_result);
  if (page)
   goto got_pg;

   if (order >= pageblock_order && (gfp_mask & __GFP_IO) &&
       !(gfp_mask & __GFP_RETRY_MAYFAIL)) {
   if (compact_result == COMPACT_SKIPPED ||
       compact_result == COMPACT_DEFERRED)
    goto nopage;
  }





  if (costly_order && (gfp_mask & __GFP_NORETRY)) {
   if (compact_result == COMPACT_DEFERRED)
    goto nopage;






   compact_priority = INIT_COMPACT_PRIORITY;
  }
 }

retry:

 if (alloc_flags & ALLOC_KSWAPD)
  wake_all_kswapds(order, gfp_mask, ac);

 reserve_flags = __gfp_pfmemalloc_flags(gfp_mask);
 if (reserve_flags)
  alloc_flags = reserve_flags;






 if (!(alloc_flags & ALLOC_CPUSET) || reserve_flags) {
  ac->nodemask = ((void*)0);
  ac->preferred_zoneref = first_zones_zonelist(ac->zonelist,
     ac->high_zoneidx, ac->nodemask);
 }


 page = get_page_from_freelist(gfp_mask, order, alloc_flags, ac);
 if (page)
  goto got_pg;


 if (!can_direct_reclaim)
  goto nopage;


 if (current->flags & PF_MEMALLOC)
  goto nopage;


 page = __alloc_pages_direct_reclaim(gfp_mask, order, alloc_flags, ac,
       &did_some_progress);
 if (page)
  goto got_pg;


 page = __alloc_pages_direct_compact(gfp_mask, order, alloc_flags, ac,
     compact_priority, &compact_result);
 if (page)
  goto got_pg;


 if (gfp_mask & __GFP_NORETRY)
  goto nopage;





 if (costly_order && !(gfp_mask & __GFP_RETRY_MAYFAIL))
  goto nopage;

 if (should_reclaim_retry(gfp_mask, order, ac, alloc_flags,
     did_some_progress > 0, &no_progress_loops))
  goto retry;







 if (did_some_progress > 0 &&
   should_compact_retry(ac, order, alloc_flags,
    compact_result, &compact_priority,
    &compaction_retries))
  goto retry;



 if (check_retry_cpuset(cpuset_mems_cookie, ac))
  goto retry_cpuset;


 page = __alloc_pages_may_oom(gfp_mask, order, ac, &did_some_progress);
 if (page)
  goto got_pg;


 if (tsk_is_oom_victim(current) &&
     (alloc_flags == ALLOC_OOM ||
      (gfp_mask & __GFP_NOMEMALLOC)))
  goto nopage;


 if (did_some_progress) {
  no_progress_loops = 0;
  goto retry;
 }

nopage:

 if (check_retry_cpuset(cpuset_mems_cookie, ac))
  goto retry_cpuset;





 if (gfp_mask & __GFP_NOFAIL) {




  if (WARN_ON_ONCE(!can_direct_reclaim))
   goto fail;






  WARN_ON_ONCE(current->flags & PF_MEMALLOC);







  WARN_ON_ONCE(order > PAGE_ALLOC_COSTLY_ORDER);







  page = __alloc_pages_cpuset_fallback(gfp_mask, order, ALLOC_HARDER, ac);
  if (page)
   goto got_pg;

  cond_resched();
  goto retry;
 }
fail:
 warn_alloc(gfp_mask, ac->nodemask,
   "page allocation failure: order:%u", order);
got_pg:
 return page;
}
