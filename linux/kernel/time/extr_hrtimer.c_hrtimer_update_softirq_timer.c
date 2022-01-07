
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer_cpu_base {int softirq_next_timer; } ;
typedef scalar_t__ ktime_t ;


 int HRTIMER_ACTIVE_SOFT ;
 scalar_t__ KTIME_MAX ;
 scalar_t__ __hrtimer_get_next_event (struct hrtimer_cpu_base*,int ) ;
 int hrtimer_reprogram (int ,int) ;

__attribute__((used)) static void
hrtimer_update_softirq_timer(struct hrtimer_cpu_base *cpu_base, bool reprogram)
{
 ktime_t expires;




 expires = __hrtimer_get_next_event(cpu_base, HRTIMER_ACTIVE_SOFT);






 if (expires == KTIME_MAX)
  return;





 hrtimer_reprogram(cpu_base->softirq_next_timer, reprogram);
}
