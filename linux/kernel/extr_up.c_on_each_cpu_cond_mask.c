
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;
typedef int (* smp_call_func_t ) (void*) ;
typedef int gfp_t ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;

void on_each_cpu_cond_mask(bool (*cond_func)(int cpu, void *info),
      smp_call_func_t func, void *info, bool wait,
      gfp_t gfp_flags, const struct cpumask *mask)
{
 unsigned long flags;

 preempt_disable();
 if (cond_func(0, info)) {
  local_irq_save(flags);
  func(info);
  local_irq_restore(flags);
 }
 preempt_enable();
}
