
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tick_sched {int check_clocks; } ;


 int set_bit (int ,int *) ;
 struct tick_sched* this_cpu_ptr (int *) ;
 int tick_cpu_sched ;

void tick_oneshot_notify(void)
{
 struct tick_sched *ts = this_cpu_ptr(&tick_cpu_sched);

 set_bit(0, &ts->check_clocks);
}
