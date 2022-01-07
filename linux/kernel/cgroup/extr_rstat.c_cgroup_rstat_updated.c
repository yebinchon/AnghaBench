
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_rstat_cpu {struct cgroup* updated_children; struct cgroup* updated_next; } ;
struct cgroup {int dummy; } ;
typedef int raw_spinlock_t ;


 struct cgroup* cgroup_parent (struct cgroup*) ;
 struct cgroup_rstat_cpu* cgroup_rstat_cpu (struct cgroup*,int) ;
 int cgroup_rstat_cpu_lock ;
 int * per_cpu_ptr (int *,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int smp_mb () ;

void cgroup_rstat_updated(struct cgroup *cgrp, int cpu)
{
 raw_spinlock_t *cpu_lock = per_cpu_ptr(&cgroup_rstat_cpu_lock, cpu);
 struct cgroup *parent;
 unsigned long flags;


 if (!cgroup_parent(cgrp))
  return;





 smp_mb();






 if (cgroup_rstat_cpu(cgrp, cpu)->updated_next)
  return;

 raw_spin_lock_irqsave(cpu_lock, flags);


 for (parent = cgroup_parent(cgrp); parent;
      cgrp = parent, parent = cgroup_parent(cgrp)) {
  struct cgroup_rstat_cpu *rstatc = cgroup_rstat_cpu(cgrp, cpu);
  struct cgroup_rstat_cpu *prstatc = cgroup_rstat_cpu(parent, cpu);





  if (rstatc->updated_next)
   break;

  rstatc->updated_next = prstatc->updated_children;
  prstatc->updated_children = cgrp;
 }

 raw_spin_unlock_irqrestore(cpu_lock, flags);
}
