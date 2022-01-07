
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mem_cgroup_thresholds {TYPE_2__* primary; TYPE_2__* spare; } ;
struct mem_cgroup_threshold_ary {int size; int current_threshold; TYPE_1__* entries; } ;
struct mem_cgroup_threshold {int dummy; } ;
struct mem_cgroup {int thresholds_lock; struct mem_cgroup_thresholds memsw_thresholds; struct mem_cgroup_thresholds thresholds; } ;
struct eventfd_ctx {int dummy; } ;
typedef enum res_type { ____Placeholder_res_type } res_type ;
struct TYPE_6__ {int size; int entries; } ;
struct TYPE_5__ {unsigned long threshold; struct eventfd_ctx* eventfd; } ;


 int BUG () ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int _MEM ;
 int _MEMSWAP ;
 int __mem_cgroup_threshold (struct mem_cgroup*,int) ;
 int compare_thresholds ;
 int entries ;
 int kfree (TYPE_2__*) ;
 struct mem_cgroup_threshold_ary* kmalloc (int ,int ) ;
 unsigned long mem_cgroup_usage (struct mem_cgroup*,int) ;
 int memcpy (TYPE_1__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_counter_memparse (char const*,char*,unsigned long*) ;
 int rcu_assign_pointer (TYPE_2__*,struct mem_cgroup_threshold_ary*) ;
 int sort (TYPE_1__*,int,int,int ,int *) ;
 int struct_size (struct mem_cgroup_threshold_ary*,int ,int) ;
 int synchronize_rcu () ;

__attribute__((used)) static int __mem_cgroup_usage_register_event(struct mem_cgroup *memcg,
 struct eventfd_ctx *eventfd, const char *args, enum res_type type)
{
 struct mem_cgroup_thresholds *thresholds;
 struct mem_cgroup_threshold_ary *new;
 unsigned long threshold;
 unsigned long usage;
 int i, size, ret;

 ret = page_counter_memparse(args, "-1", &threshold);
 if (ret)
  return ret;

 mutex_lock(&memcg->thresholds_lock);

 if (type == _MEM) {
  thresholds = &memcg->thresholds;
  usage = mem_cgroup_usage(memcg, 0);
 } else if (type == _MEMSWAP) {
  thresholds = &memcg->memsw_thresholds;
  usage = mem_cgroup_usage(memcg, 1);
 } else
  BUG();


 if (thresholds->primary)
  __mem_cgroup_threshold(memcg, type == _MEMSWAP);

 size = thresholds->primary ? thresholds->primary->size + 1 : 1;


 new = kmalloc(struct_size(new, entries, size), GFP_KERNEL);
 if (!new) {
  ret = -ENOMEM;
  goto unlock;
 }
 new->size = size;


 if (thresholds->primary) {
  memcpy(new->entries, thresholds->primary->entries, (size - 1) *
    sizeof(struct mem_cgroup_threshold));
 }


 new->entries[size - 1].eventfd = eventfd;
 new->entries[size - 1].threshold = threshold;


 sort(new->entries, size, sizeof(struct mem_cgroup_threshold),
   compare_thresholds, ((void*)0));


 new->current_threshold = -1;
 for (i = 0; i < size; i++) {
  if (new->entries[i].threshold <= usage) {





   ++new->current_threshold;
  } else
   break;
 }


 kfree(thresholds->spare);
 thresholds->spare = thresholds->primary;

 rcu_assign_pointer(thresholds->primary, new);


 synchronize_rcu();

unlock:
 mutex_unlock(&memcg->thresholds_lock);

 return ret;
}
