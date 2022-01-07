
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irq_work_run_list (int ) ;
 int lazy_list ;
 int raised_list ;
 int this_cpu_ptr (int *) ;

void irq_work_run(void)
{
 irq_work_run_list(this_cpu_ptr(&raised_list));
 irq_work_run_list(this_cpu_ptr(&lazy_list));
}
