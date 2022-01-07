
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fmeter; } ;


 int current ;
 int fmeter_markevent (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 TYPE_1__* task_cs (int ) ;

void __cpuset_memory_pressure_bump(void)
{
 rcu_read_lock();
 fmeter_markevent(&task_cs(current)->fmeter);
 rcu_read_unlock();
}
