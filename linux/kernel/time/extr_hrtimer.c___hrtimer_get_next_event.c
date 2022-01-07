
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer_cpu_base {unsigned int active_bases; struct hrtimer* next_timer; struct hrtimer* softirq_next_timer; int softirq_activated; } ;
struct hrtimer {int dummy; } ;
typedef int ktime_t ;


 unsigned int HRTIMER_ACTIVE_HARD ;
 unsigned int HRTIMER_ACTIVE_SOFT ;
 int KTIME_MAX ;
 int __hrtimer_next_event_base (struct hrtimer_cpu_base*,int *,unsigned int,int ) ;

__attribute__((used)) static ktime_t
__hrtimer_get_next_event(struct hrtimer_cpu_base *cpu_base, unsigned int active_mask)
{
 unsigned int active;
 struct hrtimer *next_timer = ((void*)0);
 ktime_t expires_next = KTIME_MAX;

 if (!cpu_base->softirq_activated && (active_mask & HRTIMER_ACTIVE_SOFT)) {
  active = cpu_base->active_bases & HRTIMER_ACTIVE_SOFT;
  cpu_base->softirq_next_timer = ((void*)0);
  expires_next = __hrtimer_next_event_base(cpu_base, ((void*)0),
        active, KTIME_MAX);

  next_timer = cpu_base->softirq_next_timer;
 }

 if (active_mask & HRTIMER_ACTIVE_HARD) {
  active = cpu_base->active_bases & HRTIMER_ACTIVE_HARD;
  cpu_base->next_timer = next_timer;
  expires_next = __hrtimer_next_event_base(cpu_base, ((void*)0), active,
        expires_next);
 }

 return expires_next;
}
