
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int CONFIG_POSIX_TIMERS ;
 scalar_t__ IS_ENABLED (int ) ;
 int account_process_tick (struct task_struct*,int) ;
 struct task_struct* current ;
 scalar_t__ in_irq () ;
 int irq_work_tick () ;
 int rcu_sched_clock_irq (int) ;
 int run_local_timers () ;
 int run_posix_cpu_timers () ;
 int scheduler_tick () ;

void update_process_times(int user_tick)
{
 struct task_struct *p = current;


 account_process_tick(p, user_tick);
 run_local_timers();
 rcu_sched_clock_irq(user_tick);




 scheduler_tick();
 if (IS_ENABLED(CONFIG_POSIX_TIMERS))
  run_posix_cpu_timers();
}
