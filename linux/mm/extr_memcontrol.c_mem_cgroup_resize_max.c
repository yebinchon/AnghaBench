
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_counter {unsigned long max; } ;
struct mem_cgroup {struct page_counter memsw; struct page_counter memory; } ;


 int EBUSY ;
 int EINTR ;
 int EINVAL ;
 int GFP_KERNEL ;
 int current ;
 int drain_all_stock (struct mem_cgroup*) ;
 int memcg_max_mutex ;
 int memcg_oom_recover (struct mem_cgroup*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_counter_set_max (struct page_counter*,unsigned long) ;
 scalar_t__ signal_pending (int ) ;
 int try_to_free_mem_cgroup_pages (struct mem_cgroup*,int,int ,int) ;

__attribute__((used)) static int mem_cgroup_resize_max(struct mem_cgroup *memcg,
     unsigned long max, bool memsw)
{
 bool enlarge = 0;
 bool drained = 0;
 int ret;
 bool limits_invariant;
 struct page_counter *counter = memsw ? &memcg->memsw : &memcg->memory;

 do {
  if (signal_pending(current)) {
   ret = -EINTR;
   break;
  }

  mutex_lock(&memcg_max_mutex);




  limits_invariant = memsw ? max >= memcg->memory.max :
        max <= memcg->memsw.max;
  if (!limits_invariant) {
   mutex_unlock(&memcg_max_mutex);
   ret = -EINVAL;
   break;
  }
  if (max > counter->max)
   enlarge = 1;
  ret = page_counter_set_max(counter, max);
  mutex_unlock(&memcg_max_mutex);

  if (!ret)
   break;

  if (!drained) {
   drain_all_stock(memcg);
   drained = 1;
   continue;
  }

  if (!try_to_free_mem_cgroup_pages(memcg, 1,
     GFP_KERNEL, !memsw)) {
   ret = -EBUSY;
   break;
  }
 } while (1);

 if (!ret && enlarge)
  memcg_oom_recover(memcg);

 return ret;
}
