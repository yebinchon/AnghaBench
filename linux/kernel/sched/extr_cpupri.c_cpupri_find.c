
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int cpus_ptr; int prio; } ;
struct cpupri_vec {int mask; int count; } ;
struct cpupri {struct cpupri_vec* pri_to_cpu; } ;
struct cpumask {int dummy; } ;


 int BUG_ON (int) ;
 int CPUPRI_NR_PRIORITIES ;
 int atomic_read (int *) ;
 int convert_prio (int ) ;
 int cpumask_and (struct cpumask*,int ,int ) ;
 scalar_t__ cpumask_any (struct cpumask*) ;
 scalar_t__ cpumask_any_and (int ,int ) ;
 scalar_t__ nr_cpu_ids ;
 int smp_rmb () ;

int cpupri_find(struct cpupri *cp, struct task_struct *p,
  struct cpumask *lowest_mask)
{
 int idx = 0;
 int task_pri = convert_prio(p->prio);

 BUG_ON(task_pri >= CPUPRI_NR_PRIORITIES);

 for (idx = 0; idx < task_pri; idx++) {
  struct cpupri_vec *vec = &cp->pri_to_cpu[idx];
  int skip = 0;

  if (!atomic_read(&(vec)->count))
   skip = 1;
  smp_rmb();


  if (skip)
   continue;

  if (cpumask_any_and(p->cpus_ptr, vec->mask) >= nr_cpu_ids)
   continue;

  if (lowest_mask) {
   cpumask_and(lowest_mask, p->cpus_ptr, vec->mask);
   if (cpumask_any(lowest_mask) >= nr_cpu_ids)
    continue;
  }

  return 1;
 }

 return 0;
}
