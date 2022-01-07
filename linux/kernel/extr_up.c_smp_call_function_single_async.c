
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int info; int (* func ) (int ) ;} ;
typedef TYPE_1__ call_single_data_t ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int stub1 (int ) ;

int smp_call_function_single_async(int cpu, call_single_data_t *csd)
{
 unsigned long flags;

 local_irq_save(flags);
 csd->func(csd->info);
 local_irq_restore(flags);
 return 0;
}
