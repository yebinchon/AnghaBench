
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rcu_cpu_has_work; } ;


 int __this_cpu_read (int ) ;
 TYPE_1__ rcu_data ;

__attribute__((used)) static int rcu_cpu_kthread_should_run(unsigned int cpu)
{
 return __this_cpu_read(rcu_data.rcu_cpu_has_work);
}
