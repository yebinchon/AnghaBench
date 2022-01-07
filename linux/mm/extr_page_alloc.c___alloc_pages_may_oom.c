
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct oom_control {int gfp_mask; unsigned int order; int * memcg; int nodemask; int zonelist; } ;
struct alloc_context {scalar_t__ high_zoneidx; int nodemask; int zonelist; } ;
typedef int gfp_t ;
struct TYPE_2__ {int flags; } ;


 int ALLOC_CPUSET ;
 int ALLOC_NO_WATERMARKS ;
 int ALLOC_WMARK_HIGH ;
 unsigned int PAGE_ALLOC_COSTLY_ORDER ;
 int PF_DUMPCORE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ ZONE_NORMAL ;
 int __GFP_DIRECT_RECLAIM ;
 int __GFP_HARDWALL ;
 int __GFP_NOFAIL ;
 int __GFP_RETRY_MAYFAIL ;
 int __GFP_THISNODE ;
 struct page* __alloc_pages_cpuset_fallback (int,unsigned int,int ,struct alloc_context const*) ;
 TYPE_1__* current ;
 struct page* get_page_from_freelist (int,unsigned int,int,struct alloc_context const*) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int oom_lock ;
 scalar_t__ out_of_memory (struct oom_control*) ;
 scalar_t__ pm_suspended_storage () ;
 int schedule_timeout_uninterruptible (int) ;

__attribute__((used)) static inline struct page *
__alloc_pages_may_oom(gfp_t gfp_mask, unsigned int order,
 const struct alloc_context *ac, unsigned long *did_some_progress)
{
 struct oom_control oc = {
  .zonelist = ac->zonelist,
  .nodemask = ac->nodemask,
  .memcg = ((void*)0),
  .gfp_mask = gfp_mask,
  .order = order,
 };
 struct page *page;

 *did_some_progress = 0;





 if (!mutex_trylock(&oom_lock)) {
  *did_some_progress = 1;
  schedule_timeout_uninterruptible(1);
  return ((void*)0);
 }
 page = get_page_from_freelist((gfp_mask | __GFP_HARDWALL) &
          ~__GFP_DIRECT_RECLAIM, order,
          ALLOC_WMARK_HIGH|ALLOC_CPUSET, ac);
 if (page)
  goto out;


 if (current->flags & PF_DUMPCORE)
  goto out;

 if (order > PAGE_ALLOC_COSTLY_ORDER)
  goto out;






 if (gfp_mask & __GFP_RETRY_MAYFAIL)
  goto out;

 if (ac->high_zoneidx < ZONE_NORMAL)
  goto out;
 if (pm_suspended_storage())
  goto out;
 if (gfp_mask & __GFP_THISNODE)
  goto out;


 if (out_of_memory(&oc) || WARN_ON_ONCE(gfp_mask & __GFP_NOFAIL)) {
  *did_some_progress = 1;





  if (gfp_mask & __GFP_NOFAIL)
   page = __alloc_pages_cpuset_fallback(gfp_mask, order,
     ALLOC_NO_WATERMARKS, ac);
 }
out:
 mutex_unlock(&oom_lock);
 return page;
}
