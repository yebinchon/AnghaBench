
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_cgroup {int css; scalar_t__ oom_kill_disable; } ;
typedef int gfp_t ;
typedef enum oom_status { ____Placeholder_oom_status } oom_status ;
struct TYPE_2__ {int memcg_oom_order; int memcg_oom_gfp_mask; struct mem_cgroup* memcg_in_oom; int in_user_fault; } ;


 int MEMCG_OOM ;
 int OOM_ASYNC ;
 int OOM_FAILED ;
 int OOM_SKIPPED ;
 int OOM_SUCCESS ;
 int PAGE_ALLOC_COSTLY_ORDER ;
 int css_get (int *) ;
 TYPE_1__* current ;
 int mem_cgroup_mark_under_oom (struct mem_cgroup*) ;
 int mem_cgroup_oom_notify (struct mem_cgroup*) ;
 int mem_cgroup_oom_trylock (struct mem_cgroup*) ;
 int mem_cgroup_oom_unlock (struct mem_cgroup*) ;
 scalar_t__ mem_cgroup_out_of_memory (struct mem_cgroup*,int ,int) ;
 int mem_cgroup_unmark_under_oom (struct mem_cgroup*) ;
 int memcg_memory_event (struct mem_cgroup*,int ) ;

__attribute__((used)) static enum oom_status mem_cgroup_oom(struct mem_cgroup *memcg, gfp_t mask, int order)
{
 enum oom_status ret;
 bool locked;

 if (order > PAGE_ALLOC_COSTLY_ORDER)
  return OOM_SKIPPED;

 memcg_memory_event(memcg, MEMCG_OOM);
 if (memcg->oom_kill_disable) {
  if (!current->in_user_fault)
   return OOM_SKIPPED;
  css_get(&memcg->css);
  current->memcg_in_oom = memcg;
  current->memcg_oom_gfp_mask = mask;
  current->memcg_oom_order = order;

  return OOM_ASYNC;
 }

 mem_cgroup_mark_under_oom(memcg);

 locked = mem_cgroup_oom_trylock(memcg);

 if (locked)
  mem_cgroup_oom_notify(memcg);

 mem_cgroup_unmark_under_oom(memcg);
 if (mem_cgroup_out_of_memory(memcg, mask, order))
  ret = OOM_SUCCESS;
 else
  ret = OOM_FAILED;

 if (locked)
  mem_cgroup_oom_unlock(memcg);

 return ret;
}
