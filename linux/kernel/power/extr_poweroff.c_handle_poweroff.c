
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_online_mask ;
 int cpumask_first (int ) ;
 int poweroff_work ;
 int schedule_work_on (int ,int *) ;

__attribute__((used)) static void handle_poweroff(int key)
{

 schedule_work_on(cpumask_first(cpu_online_mask), &poweroff_work);
}
