
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

int smp_call_function_single(int cpu, void (*func) (void *info), void *info,
    int wait)
{
 unsigned long flags;

 WARN_ON(cpu != 0);

 local_irq_save(flags);
 func(info);
 local_irq_restore(flags);

 return 0;
}
