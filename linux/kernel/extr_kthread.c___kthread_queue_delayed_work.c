
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {scalar_t__ function; scalar_t__ expires; } ;
struct kthread_worker {int delayed_work_list; int work_list; } ;
struct kthread_work {struct kthread_worker* worker; int node; } ;
struct kthread_delayed_work {struct kthread_work work; struct timer_list timer; } ;


 int WARN_ON_ONCE (int) ;
 int add_timer (struct timer_list*) ;
 scalar_t__ jiffies ;
 scalar_t__ kthread_delayed_work_timer_fn ;
 int kthread_insert_work (struct kthread_worker*,struct kthread_work*,int *) ;
 int kthread_insert_work_sanity_check (struct kthread_worker*,struct kthread_work*) ;
 int list_add (int *,int *) ;

__attribute__((used)) static void __kthread_queue_delayed_work(struct kthread_worker *worker,
      struct kthread_delayed_work *dwork,
      unsigned long delay)
{
 struct timer_list *timer = &dwork->timer;
 struct kthread_work *work = &dwork->work;

 WARN_ON_ONCE(timer->function != kthread_delayed_work_timer_fn);







 if (!delay) {
  kthread_insert_work(worker, work, &worker->work_list);
  return;
 }


 kthread_insert_work_sanity_check(worker, work);

 list_add(&work->node, &worker->delayed_work_list);
 work->worker = worker;
 timer->expires = jiffies + delay;
 add_timer(timer);
}
