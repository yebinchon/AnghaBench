
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_CLUSTER_PM_ENTER ;
 int CPU_CLUSTER_PM_ENTER_FAILED ;
 int cpu_pm_notify (int ,int,int*) ;

int cpu_cluster_pm_enter(void)
{
 int nr_calls;
 int ret = 0;

 ret = cpu_pm_notify(CPU_CLUSTER_PM_ENTER, -1, &nr_calls);
 if (ret)




  cpu_pm_notify(CPU_CLUSTER_PM_ENTER_FAILED, nr_calls - 1, ((void*)0));

 return ret;
}
