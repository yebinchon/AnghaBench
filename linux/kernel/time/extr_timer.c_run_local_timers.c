
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_base {int clk; } ;


 size_t BASE_STD ;
 int CONFIG_NO_HZ_COMMON ;
 int IS_ENABLED (int ) ;
 int TIMER_SOFTIRQ ;
 int hrtimer_run_queues () ;
 int jiffies ;
 int raise_softirq (int ) ;
 struct timer_base* this_cpu_ptr (int *) ;
 scalar_t__ time_before (int ,int ) ;
 int * timer_bases ;

void run_local_timers(void)
{
 struct timer_base *base = this_cpu_ptr(&timer_bases[BASE_STD]);

 hrtimer_run_queues();

 if (time_before(jiffies, base->clk)) {
  if (!IS_ENABLED(CONFIG_NO_HZ_COMMON))
   return;

  base++;
  if (time_before(jiffies, base->clk))
   return;
 }
 raise_softirq(TIMER_SOFTIRQ);
}
