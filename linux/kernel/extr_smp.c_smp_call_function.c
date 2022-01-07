
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smp_call_func_t ;


 int cpu_online_mask ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_call_function_many (int ,int ,void*,int) ;

void smp_call_function(smp_call_func_t func, void *info, int wait)
{
 preempt_disable();
 smp_call_function_many(cpu_online_mask, func, info, wait);
 preempt_enable();
}
