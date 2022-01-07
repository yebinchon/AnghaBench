
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hrtimer_cpu_base {scalar_t__ expires_next; scalar_t__ hang_detected; scalar_t__ softirq_expires_next; scalar_t__ softirq_activated; TYPE_1__* next_timer; } ;
typedef scalar_t__ ktime_t ;
struct TYPE_2__ {scalar_t__ is_soft; } ;


 int HRTIMER_ACTIVE_ALL ;
 int HRTIMER_ACTIVE_HARD ;
 scalar_t__ __hrtimer_get_next_event (struct hrtimer_cpu_base*,int ) ;
 int __hrtimer_hres_active (struct hrtimer_cpu_base*) ;
 int tick_program_event (scalar_t__,int) ;

__attribute__((used)) static void
hrtimer_force_reprogram(struct hrtimer_cpu_base *cpu_base, int skip_equal)
{
 ktime_t expires_next;




 expires_next = __hrtimer_get_next_event(cpu_base, HRTIMER_ACTIVE_ALL);

 if (cpu_base->next_timer && cpu_base->next_timer->is_soft) {





  if (cpu_base->softirq_activated)
   expires_next = __hrtimer_get_next_event(cpu_base,
        HRTIMER_ACTIVE_HARD);
  else
   cpu_base->softirq_expires_next = expires_next;
 }

 if (skip_equal && expires_next == cpu_base->expires_next)
  return;

 cpu_base->expires_next = expires_next;
 if (!__hrtimer_hres_active(cpu_base) || cpu_base->hang_detected)
  return;

 tick_program_event(cpu_base->expires_next, 1);
}
