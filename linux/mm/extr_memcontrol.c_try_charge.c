
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct page_counter {int dummy; } ;
struct mem_cgroup {scalar_t__ high; int high_work; int memory; int css; int memsw; } ;
typedef int gfp_t ;
typedef enum oom_status { ____Placeholder_oom_status } oom_status ;
struct TYPE_5__ {int flags; unsigned int memcg_nr_pages_over_high; } ;


 int ENOMEM ;
 int MEMCG_CHARGE_BATCH ;
 int MEMCG_MAX ;
 int MEM_CGROUP_RECLAIM_RETRIES ;


 int PAGE_ALLOC_COSTLY_ORDER ;
 unsigned int PAGE_SIZE ;
 int PF_MEMALLOC ;
 int __GFP_ATOMIC ;
 int __GFP_NOFAIL ;
 int __GFP_NORETRY ;
 int __GFP_RETRY_MAYFAIL ;
 scalar_t__ consume_stock (struct mem_cgroup*,unsigned int) ;
 int css_get_many (int *,unsigned int) ;
 TYPE_1__* current ;
 scalar_t__ do_memsw_account () ;
 int drain_all_stock (struct mem_cgroup*) ;
 scalar_t__ fatal_signal_pending (TYPE_1__*) ;
 int get_order (unsigned int) ;
 int gfpflags_allow_blocking (int) ;
 scalar_t__ in_interrupt () ;
 unsigned int max (int ,unsigned int) ;
 struct mem_cgroup* mem_cgroup_from_counter (struct page_counter*,int ) ;
 scalar_t__ mem_cgroup_is_root (struct mem_cgroup*) ;
 unsigned int mem_cgroup_margin (struct mem_cgroup*) ;
 int mem_cgroup_oom (struct mem_cgroup*,int,int ) ;
 scalar_t__ mem_cgroup_wait_acct_move (struct mem_cgroup*) ;
 int memcg_memory_event (struct mem_cgroup*,int ) ;
 int memory ;
 int memsw ;
 int page_counter_charge (int *,unsigned int) ;
 scalar_t__ page_counter_read (int *) ;
 scalar_t__ page_counter_try_charge (int *,unsigned int,struct page_counter**) ;
 int page_counter_uncharge (int *,unsigned int) ;
 struct mem_cgroup* parent_mem_cgroup (struct mem_cgroup*) ;
 int refill_stock (struct mem_cgroup*,unsigned int) ;
 int schedule_work (int *) ;
 int set_notify_resume (TYPE_1__*) ;
 int should_force_charge () ;
 int task_in_memcg_oom (TYPE_1__*) ;
 unsigned long try_to_free_mem_cgroup_pages (struct mem_cgroup*,unsigned int,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int try_charge(struct mem_cgroup *memcg, gfp_t gfp_mask,
        unsigned int nr_pages)
{
 unsigned int batch = max(MEMCG_CHARGE_BATCH, nr_pages);
 int nr_retries = MEM_CGROUP_RECLAIM_RETRIES;
 struct mem_cgroup *mem_over_limit;
 struct page_counter *counter;
 unsigned long nr_reclaimed;
 bool may_swap = 1;
 bool drained = 0;
 enum oom_status oom_status;

 if (mem_cgroup_is_root(memcg))
  return 0;
retry:
 if (consume_stock(memcg, nr_pages))
  return 0;

 if (!do_memsw_account() ||
     page_counter_try_charge(&memcg->memsw, batch, &counter)) {
  if (page_counter_try_charge(&memcg->memory, batch, &counter))
   goto done_restock;
  if (do_memsw_account())
   page_counter_uncharge(&memcg->memsw, batch);
  mem_over_limit = mem_cgroup_from_counter(counter, memory);
 } else {
  mem_over_limit = mem_cgroup_from_counter(counter, memsw);
  may_swap = 0;
 }

 if (batch > nr_pages) {
  batch = nr_pages;
  goto retry;
 }







 if (gfp_mask & __GFP_ATOMIC)
  goto force;







 if (unlikely(should_force_charge()))
  goto force;







 if (unlikely(current->flags & PF_MEMALLOC))
  goto force;

 if (unlikely(task_in_memcg_oom(current)))
  goto nomem;

 if (!gfpflags_allow_blocking(gfp_mask))
  goto nomem;

 memcg_memory_event(mem_over_limit, MEMCG_MAX);

 nr_reclaimed = try_to_free_mem_cgroup_pages(mem_over_limit, nr_pages,
          gfp_mask, may_swap);

 if (mem_cgroup_margin(mem_over_limit) >= nr_pages)
  goto retry;

 if (!drained) {
  drain_all_stock(mem_over_limit);
  drained = 1;
  goto retry;
 }

 if (gfp_mask & __GFP_NORETRY)
  goto nomem;
 if (nr_reclaimed && nr_pages <= (1 << PAGE_ALLOC_COSTLY_ORDER))
  goto retry;




 if (mem_cgroup_wait_acct_move(mem_over_limit))
  goto retry;

 if (nr_retries--)
  goto retry;

 if (gfp_mask & __GFP_RETRY_MAYFAIL)
  goto nomem;

 if (gfp_mask & __GFP_NOFAIL)
  goto force;

 if (fatal_signal_pending(current))
  goto force;






 oom_status = mem_cgroup_oom(mem_over_limit, gfp_mask,
         get_order(nr_pages * PAGE_SIZE));
 switch (oom_status) {
 case 128:
  nr_retries = MEM_CGROUP_RECLAIM_RETRIES;
  goto retry;
 case 129:
  goto force;
 default:
  goto nomem;
 }
nomem:
 if (!(gfp_mask & __GFP_NOFAIL))
  return -ENOMEM;
force:





 page_counter_charge(&memcg->memory, nr_pages);
 if (do_memsw_account())
  page_counter_charge(&memcg->memsw, nr_pages);
 css_get_many(&memcg->css, nr_pages);

 return 0;

done_restock:
 css_get_many(&memcg->css, batch);
 if (batch > nr_pages)
  refill_stock(memcg, batch - nr_pages);
 do {
  if (page_counter_read(&memcg->memory) > memcg->high) {

   if (in_interrupt()) {
    schedule_work(&memcg->high_work);
    break;
   }
   current->memcg_nr_pages_over_high += batch;
   set_notify_resume(current);
   break;
  }
 } while ((memcg = parent_mem_cgroup(memcg)));

 return 0;
}
