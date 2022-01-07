
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpmasks {int dummy; } ;
struct cpuset {scalar_t__ attach_in_progress; scalar_t__ partition_root_state; int effective_mems; int effective_cpus; int subparts_cpus; scalar_t__ nr_subparts_cpus; int mems_allowed; } ;
typedef int nodemask_t ;
typedef int cpumask_t ;


 scalar_t__ PRS_ERROR ;
 int compute_effective_cpumask (int *,struct cpuset*,struct cpuset*) ;
 int cpumask_andnot (int *,int *,int ) ;
 int cpumask_clear (int ) ;
 scalar_t__ cpumask_empty (int *) ;
 int cpumask_equal (int *,int ) ;
 int cpumask_intersects (int *,int ) ;
 int cpuset_attach_wq ;
 int cpuset_force_rebuild () ;
 int cpuset_rwsem ;
 int hotplug_update_tasks (struct cpuset*,int *,int *,int,int) ;
 int hotplug_update_tasks_legacy (struct cpuset*,int *,int *,int,int) ;
 scalar_t__ is_in_v2_mode () ;
 scalar_t__ is_partition_root (struct cpuset*) ;
 int nodes_and (int ,int ,int ) ;
 int nodes_equal (int ,int ) ;
 struct cpuset* parent_cs (struct cpuset*) ;
 int partcmd_disable ;
 int partcmd_update ;
 int percpu_down_write (int *) ;
 int percpu_up_write (int *) ;
 scalar_t__ update_parent_subparts_cpumask (struct cpuset*,int ,int *,struct tmpmasks*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void cpuset_hotplug_update_tasks(struct cpuset *cs, struct tmpmasks *tmp)
{
 static cpumask_t new_cpus;
 static nodemask_t new_mems;
 bool cpus_updated;
 bool mems_updated;
 struct cpuset *parent;
retry:
 wait_event(cpuset_attach_wq, cs->attach_in_progress == 0);

 percpu_down_write(&cpuset_rwsem);





 if (cs->attach_in_progress) {
  percpu_up_write(&cpuset_rwsem);
  goto retry;
 }

 parent = parent_cs(cs);
 compute_effective_cpumask(&new_cpus, cs, parent);
 nodes_and(new_mems, cs->mems_allowed, parent->effective_mems);

 if (cs->nr_subparts_cpus)




  cpumask_andnot(&new_cpus, &new_cpus, cs->subparts_cpus);

 if (!tmp || !cs->partition_root_state)
  goto update_tasks;






 if (is_partition_root(cs) && (cpumask_empty(&new_cpus) ||
    (parent->partition_root_state == PRS_ERROR))) {
  if (cs->nr_subparts_cpus) {
   cs->nr_subparts_cpus = 0;
   cpumask_clear(cs->subparts_cpus);
   compute_effective_cpumask(&new_cpus, cs, parent);
  }







  if ((parent->partition_root_state == PRS_ERROR) ||
       cpumask_empty(&new_cpus)) {
   update_parent_subparts_cpumask(cs, partcmd_disable,
             ((void*)0), tmp);
   cs->partition_root_state = PRS_ERROR;
  }
  cpuset_force_rebuild();
 }






 if (is_partition_root(parent) &&
    ((cs->partition_root_state == PRS_ERROR) ||
     !cpumask_intersects(&new_cpus, parent->subparts_cpus)) &&
      update_parent_subparts_cpumask(cs, partcmd_update, ((void*)0), tmp))
  cpuset_force_rebuild();

update_tasks:
 cpus_updated = !cpumask_equal(&new_cpus, cs->effective_cpus);
 mems_updated = !nodes_equal(new_mems, cs->effective_mems);

 if (is_in_v2_mode())
  hotplug_update_tasks(cs, &new_cpus, &new_mems,
         cpus_updated, mems_updated);
 else
  hotplug_update_tasks_legacy(cs, &new_cpus, &new_mems,
         cpus_updated, mems_updated);

 percpu_up_write(&cpuset_rwsem);
}
