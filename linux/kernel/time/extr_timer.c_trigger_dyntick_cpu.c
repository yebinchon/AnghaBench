
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int flags; int expires; } ;
struct timer_base {int cpu; int next_expiry; int is_idle; } ;


 int TIMER_DEFERRABLE ;
 int is_timers_nohz_active () ;
 scalar_t__ tick_nohz_full_cpu (int ) ;
 scalar_t__ time_after_eq (int ,int ) ;
 int wake_up_nohz_cpu (int ) ;

__attribute__((used)) static void
trigger_dyntick_cpu(struct timer_base *base, struct timer_list *timer)
{
 if (!is_timers_nohz_active())
  return;





 if (timer->flags & TIMER_DEFERRABLE) {
  if (tick_nohz_full_cpu(base->cpu))
   wake_up_nohz_cpu(base->cpu);
  return;
 }






 if (!base->is_idle)
  return;


 if (time_after_eq(timer->expires, base->next_expiry))
  return;





 base->next_expiry = timer->expires;
 wake_up_nohz_cpu(base->cpu);
}
