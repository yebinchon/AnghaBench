
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rt_period; int rt_runtime; } ;


 TYPE_1__ def_rt_bandwidth ;
 int global_rt_period () ;
 int global_rt_runtime () ;
 int ns_to_ktime (int ) ;

__attribute__((used)) static void sched_rt_do_global(void)
{
 def_rt_bandwidth.rt_runtime = global_rt_runtime();
 def_rt_bandwidth.rt_period = ns_to_ktime(global_rt_period());
}
