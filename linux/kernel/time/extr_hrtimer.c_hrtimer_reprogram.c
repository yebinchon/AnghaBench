
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer_cpu_base {scalar_t__ softirq_expires_next; scalar_t__ expires_next; scalar_t__ hang_detected; struct hrtimer* next_timer; scalar_t__ in_hrtirq; struct hrtimer* softirq_next_timer; scalar_t__ softirq_activated; } ;
struct hrtimer_clock_base {struct hrtimer_cpu_base* cpu_base; int offset; } ;
struct hrtimer {scalar_t__ is_soft; struct hrtimer_clock_base* base; } ;
typedef scalar_t__ ktime_t ;


 int WARN_ON_ONCE (int) ;
 int __hrtimer_hres_active (struct hrtimer_cpu_base*) ;
 int hrtimer_bases ;
 int hrtimer_get_expires (struct hrtimer*) ;
 scalar_t__ hrtimer_get_expires_tv64 (struct hrtimer*) ;
 int ktime_before (scalar_t__,scalar_t__) ;
 scalar_t__ ktime_sub (int ,int ) ;
 struct hrtimer_cpu_base* this_cpu_ptr (int *) ;
 int tick_program_event (scalar_t__,int) ;

__attribute__((used)) static void hrtimer_reprogram(struct hrtimer *timer, bool reprogram)
{
 struct hrtimer_cpu_base *cpu_base = this_cpu_ptr(&hrtimer_bases);
 struct hrtimer_clock_base *base = timer->base;
 ktime_t expires = ktime_sub(hrtimer_get_expires(timer), base->offset);

 WARN_ON_ONCE(hrtimer_get_expires_tv64(timer) < 0);





 if (expires < 0)
  expires = 0;

 if (timer->is_soft) {







  struct hrtimer_cpu_base *timer_cpu_base = base->cpu_base;

  if (timer_cpu_base->softirq_activated)
   return;

  if (!ktime_before(expires, timer_cpu_base->softirq_expires_next))
   return;

  timer_cpu_base->softirq_next_timer = timer;
  timer_cpu_base->softirq_expires_next = expires;

  if (!ktime_before(expires, timer_cpu_base->expires_next) ||
      !reprogram)
   return;
 }





 if (base->cpu_base != cpu_base)
  return;
 if (cpu_base->in_hrtirq)
  return;

 if (expires >= cpu_base->expires_next)
  return;


 cpu_base->next_timer = timer;
 cpu_base->expires_next = expires;
 if (!__hrtimer_hres_active(cpu_base) || cpu_base->hang_detected)
  return;





 tick_program_event(expires, 1);
}
