
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_cgroup_thresholds {struct mem_cgroup_threshold_ary* spare; struct mem_cgroup_threshold_ary* primary; } ;
struct mem_cgroup_threshold_ary {int size; int current_threshold; TYPE_1__* entries; } ;
struct mem_cgroup {int thresholds_lock; struct mem_cgroup_thresholds memsw_thresholds; struct mem_cgroup_thresholds thresholds; } ;
struct eventfd_ctx {int dummy; } ;
typedef enum res_type { ____Placeholder_res_type } res_type ;
struct TYPE_2__ {unsigned long threshold; struct eventfd_ctx* eventfd; } ;


 int BUG () ;
 int _MEM ;
 int _MEMSWAP ;
 int __mem_cgroup_threshold (struct mem_cgroup*,int) ;
 int kfree (struct mem_cgroup_threshold_ary*) ;
 unsigned long mem_cgroup_usage (struct mem_cgroup*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (struct mem_cgroup_threshold_ary*,struct mem_cgroup_threshold_ary*) ;
 int synchronize_rcu () ;

__attribute__((used)) static void __mem_cgroup_usage_unregister_event(struct mem_cgroup *memcg,
 struct eventfd_ctx *eventfd, enum res_type type)
{
 struct mem_cgroup_thresholds *thresholds;
 struct mem_cgroup_threshold_ary *new;
 unsigned long usage;
 int i, j, size;

 mutex_lock(&memcg->thresholds_lock);

 if (type == _MEM) {
  thresholds = &memcg->thresholds;
  usage = mem_cgroup_usage(memcg, 0);
 } else if (type == _MEMSWAP) {
  thresholds = &memcg->memsw_thresholds;
  usage = mem_cgroup_usage(memcg, 1);
 } else
  BUG();

 if (!thresholds->primary)
  goto unlock;


 __mem_cgroup_threshold(memcg, type == _MEMSWAP);


 size = 0;
 for (i = 0; i < thresholds->primary->size; i++) {
  if (thresholds->primary->entries[i].eventfd != eventfd)
   size++;
 }

 new = thresholds->spare;


 if (!size) {
  kfree(new);
  new = ((void*)0);
  goto swap_buffers;
 }

 new->size = size;


 new->current_threshold = -1;
 for (i = 0, j = 0; i < thresholds->primary->size; i++) {
  if (thresholds->primary->entries[i].eventfd == eventfd)
   continue;

  new->entries[j] = thresholds->primary->entries[i];
  if (new->entries[j].threshold <= usage) {





   ++new->current_threshold;
  }
  j++;
 }

swap_buffers:

 thresholds->spare = thresholds->primary;

 rcu_assign_pointer(thresholds->primary, new);


 synchronize_rcu();


 if (!new) {
  kfree(thresholds->spare);
  thresholds->spare = ((void*)0);
 }
unlock:
 mutex_unlock(&memcg->thresholds_lock);
}
