
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktgen_dev {int delay; int next_tx; int idle_acc; scalar_t__ running; } ;
struct hrtimer_sleeper {int timer; scalar_t__ task; } ;
typedef int s64 ;
typedef int ktime_t ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_ABS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int current ;
 int destroy_hrtimer_on_stack (int *) ;
 int hrtimer_cancel (int *) ;
 int hrtimer_expires_remaining (int *) ;
 int hrtimer_init_sleeper_on_stack (struct hrtimer_sleeper*,int ,int ) ;
 int hrtimer_set_expires (int *,int ) ;
 int hrtimer_sleeper_start_expires (struct hrtimer_sleeper*,int ) ;
 int ktime_add_ns (int ,int ) ;
 scalar_t__ ktime_compare (int ,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;
 scalar_t__ likely (scalar_t__) ;
 int schedule () ;
 int set_current_state (int ) ;
 int signal_pending (int ) ;

__attribute__((used)) static void spin(struct pktgen_dev *pkt_dev, ktime_t spin_until)
{
 ktime_t start_time, end_time;
 s64 remaining;
 struct hrtimer_sleeper t;

 hrtimer_init_sleeper_on_stack(&t, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 hrtimer_set_expires(&t.timer, spin_until);

 remaining = ktime_to_ns(hrtimer_expires_remaining(&t.timer));
 if (remaining <= 0)
  goto out;

 start_time = ktime_get();
 if (remaining < 100000) {

  do {
   end_time = ktime_get();
  } while (ktime_compare(end_time, spin_until) < 0);
 } else {
  do {
   set_current_state(TASK_INTERRUPTIBLE);
   hrtimer_sleeper_start_expires(&t, HRTIMER_MODE_ABS);

   if (likely(t.task))
    schedule();

   hrtimer_cancel(&t.timer);
  } while (t.task && pkt_dev->running && !signal_pending(current));
  __set_current_state(TASK_RUNNING);
  end_time = ktime_get();
 }

 pkt_dev->idle_acc += ktime_to_ns(ktime_sub(end_time, start_time));
out:
 pkt_dev->next_tx = ktime_add_ns(spin_until, pkt_dev->delay);
 destroy_hrtimer_on_stack(&t.timer);
}
