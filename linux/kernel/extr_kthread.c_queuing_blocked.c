
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthread_worker {int lock; } ;
struct kthread_work {scalar_t__ canceling; int node; } ;


 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline bool queuing_blocked(struct kthread_worker *worker,
       struct kthread_work *work)
{
 lockdep_assert_held(&worker->lock);

 return !list_empty(&work->node) || work->canceling;
}
