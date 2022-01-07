
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_domain {int period_time; int period_timer; int completions; } ;
struct timer_list {int dummy; } ;


 int VM_COMPLETIONS_PERIOD_LEN ;
 struct wb_domain* dom ;
 scalar_t__ fprop_new_period (int *,int) ;
 struct wb_domain* from_timer (int ,struct timer_list*,int ) ;
 int jiffies ;
 int mod_timer (int *,int) ;
 int period_timer ;
 int wp_next_time (int) ;

__attribute__((used)) static void writeout_period(struct timer_list *t)
{
 struct wb_domain *dom = from_timer(dom, t, period_timer);
 int miss_periods = (jiffies - dom->period_time) /
       VM_COMPLETIONS_PERIOD_LEN;

 if (fprop_new_period(&dom->completions, miss_periods + 1)) {
  dom->period_time = wp_next_time(dom->period_time +
    miss_periods * VM_COMPLETIONS_PERIOD_LEN);
  mod_timer(&dom->period_timer, dom->period_time);
 } else {




  dom->period_time = 0;
 }
}
