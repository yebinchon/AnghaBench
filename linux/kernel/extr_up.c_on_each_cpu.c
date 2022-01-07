
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* smp_call_func_t ) (void*) ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void on_each_cpu(smp_call_func_t func, void *info, int wait)
{
 unsigned long flags;

 local_irq_save(flags);
 func(info);
 local_irq_restore(flags);
}
