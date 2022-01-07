
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_PM_EXIT ;
 int cpu_pm_notify (int ,int,int *) ;

int cpu_pm_exit(void)
{
 return cpu_pm_notify(CPU_PM_EXIT, -1, ((void*)0));
}
