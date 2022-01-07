
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;
typedef int (* smp_call_func_t ) (void*) ;


 scalar_t__ cpumask_test_cpu (int ,struct cpumask const*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void on_each_cpu_mask(const struct cpumask *mask,
        smp_call_func_t func, void *info, bool wait)
{
 unsigned long flags;

 if (cpumask_test_cpu(0, mask)) {
  local_irq_save(flags);
  func(info);
  local_irq_restore(flags);
 }
}
