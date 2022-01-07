
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_dl_entity {int deadline; } ;
struct task_struct {int cpus_ptr; struct sched_dl_entity dl; } ;
struct cpumask {int dummy; } ;
struct cpudl {TYPE_1__* elements; int free_cpus; } ;
struct TYPE_2__ {int dl; } ;


 int WARN_ON (int) ;
 int cpu_present (int) ;
 int cpudl_maximum (struct cpudl*) ;
 scalar_t__ cpumask_and (struct cpumask*,int ,int ) ;
 int cpumask_set_cpu (int,struct cpumask*) ;
 scalar_t__ cpumask_test_cpu (int,int ) ;
 scalar_t__ dl_time_before (int ,int ) ;

int cpudl_find(struct cpudl *cp, struct task_struct *p,
        struct cpumask *later_mask)
{
 const struct sched_dl_entity *dl_se = &p->dl;

 if (later_mask &&
     cpumask_and(later_mask, cp->free_cpus, p->cpus_ptr)) {
  return 1;
 } else {
  int best_cpu = cpudl_maximum(cp);

  WARN_ON(best_cpu != -1 && !cpu_present(best_cpu));

  if (cpumask_test_cpu(best_cpu, p->cpus_ptr) &&
      dl_time_before(dl_se->deadline, cp->elements[0].dl)) {
   if (later_mask)
    cpumask_set_cpu(best_cpu, later_mask);

   return 1;
  }
 }
 return 0;
}
