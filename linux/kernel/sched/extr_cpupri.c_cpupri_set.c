
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpupri_vec {int mask; int count; } ;
struct cpupri {int* cpu_to_pri; struct cpupri_vec* pri_to_cpu; } ;


 int BUG_ON (int) ;
 int CPUPRI_INVALID ;
 int CPUPRI_NR_PRIORITIES ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int convert_prio (int) ;
 int cpumask_clear_cpu (int,int ) ;
 int cpumask_set_cpu (int,int ) ;
 scalar_t__ likely (int) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

void cpupri_set(struct cpupri *cp, int cpu, int newpri)
{
 int *currpri = &cp->cpu_to_pri[cpu];
 int oldpri = *currpri;
 int do_mb = 0;

 newpri = convert_prio(newpri);

 BUG_ON(newpri >= CPUPRI_NR_PRIORITIES);

 if (newpri == oldpri)
  return;







 if (likely(newpri != CPUPRI_INVALID)) {
  struct cpupri_vec *vec = &cp->pri_to_cpu[newpri];

  cpumask_set_cpu(cpu, vec->mask);





  smp_mb__before_atomic();
  atomic_inc(&(vec)->count);
  do_mb = 1;
 }
 if (likely(oldpri != CPUPRI_INVALID)) {
  struct cpupri_vec *vec = &cp->pri_to_cpu[oldpri];
  if (do_mb)
   smp_mb__after_atomic();





  atomic_dec(&(vec)->count);
  smp_mb__after_atomic();
  cpumask_clear_cpu(cpu, vec->mask);
 }

 *currpri = newpri;
}
