
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgroup_subsys_state {int dummy; } ;
struct TYPE_2__ {int effective_mems; int mems_allowed; int effective_cpus; int cpus_allowed; } ;


 int callback_lock ;
 int cpu_possible_mask ;
 int cpumask_copy (int ,int ) ;
 int cpuset_rwsem ;
 scalar_t__ is_in_v2_mode () ;
 int node_possible_map ;
 int percpu_down_write (int *) ;
 int percpu_up_write (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 TYPE_1__ top_cpuset ;

__attribute__((used)) static void cpuset_bind(struct cgroup_subsys_state *root_css)
{
 percpu_down_write(&cpuset_rwsem);
 spin_lock_irq(&callback_lock);

 if (is_in_v2_mode()) {
  cpumask_copy(top_cpuset.cpus_allowed, cpu_possible_mask);
  top_cpuset.mems_allowed = node_possible_map;
 } else {
  cpumask_copy(top_cpuset.cpus_allowed,
        top_cpuset.effective_cpus);
  top_cpuset.mems_allowed = top_cpuset.effective_mems;
 }

 spin_unlock_irq(&callback_lock);
 percpu_up_write(&cpuset_rwsem);
}
