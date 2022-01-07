
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpmasks {struct cpumask* delmask; struct cpumask* addmask; } ;
struct cpuset {int partition_root_state; struct cpumask* subparts_cpus; int nr_subparts_cpus; struct cpumask* effective_cpus; struct cpumask* cpus_allowed; int css; } ;
struct cpumask {int dummy; } ;


 int EBUSY ;
 int EINVAL ;


 int callback_lock ;
 struct cpumask* cpu_active_mask ;
 int cpumask_and (struct cpumask*,struct cpumask*,struct cpumask*) ;
 int cpumask_andnot (struct cpumask*,struct cpumask*,struct cpumask*) ;
 int cpumask_copy (struct cpumask*,struct cpumask*) ;
 scalar_t__ cpumask_empty (struct cpumask*) ;
 int cpumask_equal (struct cpumask*,struct cpumask*) ;
 int cpumask_or (struct cpumask*,struct cpumask*,struct cpumask*) ;
 int cpumask_subset (struct cpumask*,struct cpumask*) ;
 int cpumask_weight (struct cpumask*) ;
 int cpuset_rwsem ;
 scalar_t__ css_has_online_children (int *) ;
 int is_partition_root (struct cpuset*) ;
 struct cpuset* parent_cs (struct cpuset*) ;
 int partcmd_disable ;
 int partcmd_enable ;
 int partcmd_update ;
 int percpu_rwsem_assert_held (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int update_parent_subparts_cpumask(struct cpuset *cpuset, int cmd,
       struct cpumask *newmask,
       struct tmpmasks *tmp)
{
 struct cpuset *parent = parent_cs(cpuset);
 int adding;
 int deleting;
 bool part_error = 0;

 percpu_rwsem_assert_held(&cpuset_rwsem);






 if (!is_partition_root(parent) ||
    (newmask && cpumask_empty(newmask)) ||
    (!newmask && cpumask_empty(cpuset->cpus_allowed)))
  return -EINVAL;





 if ((cmd != partcmd_update) && css_has_online_children(&cpuset->css))
  return -EBUSY;






 if ((cmd == partcmd_enable) &&
    (!cpumask_subset(cpuset->cpus_allowed, parent->effective_cpus) ||
      cpumask_equal(cpuset->cpus_allowed, parent->effective_cpus)))
  return -EINVAL;




 adding = deleting = 0;
 if (cmd == partcmd_enable) {
  cpumask_copy(tmp->addmask, cpuset->cpus_allowed);
  adding = 1;
 } else if (cmd == partcmd_disable) {
  deleting = cpumask_and(tmp->delmask, cpuset->cpus_allowed,
           parent->subparts_cpus);
 } else if (newmask) {







  cpumask_andnot(tmp->delmask, cpuset->cpus_allowed, newmask);
  deleting = cpumask_and(tmp->delmask, tmp->delmask,
           parent->subparts_cpus);

  cpumask_and(tmp->addmask, newmask, parent->effective_cpus);
  adding = cpumask_andnot(tmp->addmask, tmp->addmask,
     parent->subparts_cpus);



  if (adding &&
      cpumask_equal(parent->effective_cpus, tmp->addmask)) {
   if (!deleting)
    return -EINVAL;





   if (!cpumask_and(tmp->addmask, tmp->delmask,
      cpu_active_mask))
    return -EINVAL;
   cpumask_copy(tmp->addmask, parent->effective_cpus);
  }
 } else {
  adding = cpumask_and(tmp->addmask, cpuset->cpus_allowed,
         parent->effective_cpus);
  part_error = cpumask_equal(tmp->addmask,
        parent->effective_cpus);
 }

 if (cmd == partcmd_update) {
  int prev_prs = cpuset->partition_root_state;





  switch (cpuset->partition_root_state) {
  case 129:
   if (part_error)
    cpuset->partition_root_state = 128;
   break;
  case 128:
   if (!part_error)
    cpuset->partition_root_state = 129;
   break;
  }



  part_error = (prev_prs == 128);
 }

 if (!part_error && (cpuset->partition_root_state == 128))
  return 0;

 if (cpuset->partition_root_state == 128) {



  adding = 0;
  deleting = cpumask_and(tmp->delmask, cpuset->cpus_allowed,
           parent->subparts_cpus);
 }

 if (!adding && !deleting)
  return 0;






 spin_lock_irq(&callback_lock);
 if (adding) {
  cpumask_or(parent->subparts_cpus,
      parent->subparts_cpus, tmp->addmask);
  cpumask_andnot(parent->effective_cpus,
          parent->effective_cpus, tmp->addmask);
 }
 if (deleting) {
  cpumask_andnot(parent->subparts_cpus,
          parent->subparts_cpus, tmp->delmask);



  cpumask_and(tmp->delmask, tmp->delmask, cpu_active_mask);
  cpumask_or(parent->effective_cpus,
      parent->effective_cpus, tmp->delmask);
 }

 parent->nr_subparts_cpus = cpumask_weight(parent->subparts_cpus);
 spin_unlock_irq(&callback_lock);

 return cmd == partcmd_update;
}
