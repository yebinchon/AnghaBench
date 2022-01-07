
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smp_call_func_t ;
typedef int gfp_t ;


 int on_each_cpu_cond_mask (int (*) (int,void*),int ,void*,int,int ,int *) ;

void on_each_cpu_cond(bool (*cond_func)(int cpu, void *info),
        smp_call_func_t func, void *info, bool wait,
        gfp_t gfp_flags)
{
 on_each_cpu_cond_mask(cond_func, func, info, wait, gfp_flags, ((void*)0));
}
