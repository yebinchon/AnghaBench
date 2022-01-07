
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct work_struct {int entry; } ;
struct timer_list {scalar_t__ function; scalar_t__ expires; } ;
struct delayed_work {int cpu; struct workqueue_struct* wq; struct work_struct work; struct timer_list timer; } ;


 int WARN_ON_ONCE (int) ;
 int WORK_CPU_UNBOUND ;
 int __queue_work (int,struct workqueue_struct*,struct work_struct*) ;
 int add_timer (struct timer_list*) ;
 int add_timer_on (struct timer_list*,int) ;
 scalar_t__ delayed_work_timer_fn ;
 scalar_t__ jiffies ;
 int list_empty (int *) ;
 int timer_pending (struct timer_list*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __queue_delayed_work(int cpu, struct workqueue_struct *wq,
    struct delayed_work *dwork, unsigned long delay)
{
 struct timer_list *timer = &dwork->timer;
 struct work_struct *work = &dwork->work;

 WARN_ON_ONCE(!wq);
 WARN_ON_ONCE(timer->function != delayed_work_timer_fn);
 WARN_ON_ONCE(timer_pending(timer));
 WARN_ON_ONCE(!list_empty(&work->entry));







 if (!delay) {
  __queue_work(cpu, wq, &dwork->work);
  return;
 }

 dwork->wq = wq;
 dwork->cpu = cpu;
 timer->expires = jiffies + delay;

 if (unlikely(cpu != WORK_CPU_UNBOUND))
  add_timer_on(timer, cpu);
 else
  add_timer(timer);
}
