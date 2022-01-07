
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_domain {scalar_t__ period_time; int period_timer; int completions; } ;
struct fprop_local_percpu {int dummy; } ;


 int __fprop_inc_percpu_max (int *,struct fprop_local_percpu*,unsigned int) ;
 int jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ wp_next_time (int ) ;

__attribute__((used)) static void wb_domain_writeout_inc(struct wb_domain *dom,
       struct fprop_local_percpu *completions,
       unsigned int max_prop_frac)
{
 __fprop_inc_percpu_max(&dom->completions, completions,
          max_prop_frac);

 if (unlikely(!dom->period_time)) {






  dom->period_time = wp_next_time(jiffies);
  mod_timer(&dom->period_timer, dom->period_time);
 }
}
