
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer_cpu_base {int softirq_activated; int lock; int softirq_expires_next; } ;
typedef int ktime_t ;


 int HRTIMER_ACTIVE_HARD ;
 int HRTIMER_SOFTIRQ ;
 int KTIME_MAX ;
 scalar_t__ __hrtimer_hres_active (struct hrtimer_cpu_base*) ;
 int __hrtimer_run_queues (struct hrtimer_cpu_base*,int ,unsigned long,int ) ;
 int hrtimer_bases ;
 int hrtimer_is_hres_enabled () ;
 int hrtimer_switch_to_hres () ;
 int hrtimer_update_base (struct hrtimer_cpu_base*) ;
 int ktime_before (int ,int ) ;
 int raise_softirq_irqoff (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct hrtimer_cpu_base* this_cpu_ptr (int *) ;
 scalar_t__ tick_check_oneshot_change (int) ;

void hrtimer_run_queues(void)
{
 struct hrtimer_cpu_base *cpu_base = this_cpu_ptr(&hrtimer_bases);
 unsigned long flags;
 ktime_t now;

 if (__hrtimer_hres_active(cpu_base))
  return;
 if (tick_check_oneshot_change(!hrtimer_is_hres_enabled())) {
  hrtimer_switch_to_hres();
  return;
 }

 raw_spin_lock_irqsave(&cpu_base->lock, flags);
 now = hrtimer_update_base(cpu_base);

 if (!ktime_before(now, cpu_base->softirq_expires_next)) {
  cpu_base->softirq_expires_next = KTIME_MAX;
  cpu_base->softirq_activated = 1;
  raise_softirq_irqoff(HRTIMER_SOFTIRQ);
 }

 __hrtimer_run_queues(cpu_base, now, flags, HRTIMER_ACTIVE_HARD);
 raw_spin_unlock_irqrestore(&cpu_base->lock, flags);
}
