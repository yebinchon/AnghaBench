
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthread_worker {int lock; } ;
struct kthread_work {struct kthread_worker* worker; int node; } ;


 int WARN_ON_ONCE (int) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void kthread_insert_work_sanity_check(struct kthread_worker *worker,
          struct kthread_work *work)
{
 lockdep_assert_held(&worker->lock);
 WARN_ON_ONCE(!list_empty(&work->node));

 WARN_ON_ONCE(work->worker && work->worker != worker);
}
