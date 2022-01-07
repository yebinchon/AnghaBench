
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dummy; } ;


 int ____napi_schedule (int ,struct napi_struct*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int softnet_data ;
 int this_cpu_ptr (int *) ;

void __napi_schedule(struct napi_struct *n)
{
 unsigned long flags;

 local_irq_save(flags);
 ____napi_schedule(this_cpu_ptr(&softnet_data), n);
 local_irq_restore(flags);
}
