
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mem_cgroup_threshold_ary {int current_threshold; int size; TYPE_3__* entries; } ;
struct TYPE_5__ {int primary; } ;
struct TYPE_4__ {int primary; } ;
struct mem_cgroup {TYPE_2__ memsw_thresholds; TYPE_1__ thresholds; } ;
struct TYPE_6__ {unsigned long threshold; int eventfd; } ;


 int eventfd_signal (int ,int) ;
 unsigned long mem_cgroup_usage (struct mem_cgroup*,int) ;
 struct mem_cgroup_threshold_ary* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __mem_cgroup_threshold(struct mem_cgroup *memcg, bool swap)
{
 struct mem_cgroup_threshold_ary *t;
 unsigned long usage;
 int i;

 rcu_read_lock();
 if (!swap)
  t = rcu_dereference(memcg->thresholds.primary);
 else
  t = rcu_dereference(memcg->memsw_thresholds.primary);

 if (!t)
  goto unlock;

 usage = mem_cgroup_usage(memcg, swap);






 i = t->current_threshold;







 for (; i >= 0 && unlikely(t->entries[i].threshold > usage); i--)
  eventfd_signal(t->entries[i].eventfd, 1);


 i++;







 for (; i < t->size && unlikely(t->entries[i].threshold <= usage); i++)
  eventfd_signal(t->entries[i].eventfd, 1);


 t->current_threshold = i - 1;
unlock:
 rcu_read_unlock();
}
