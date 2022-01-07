
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int nr_idle; int nr_workers; int lock; } ;
struct worker {int current_work; int flags; int task; int entry; int scheduled; struct worker_pool* pool; } ;


 scalar_t__ WARN_ON (int) ;
 int WORKER_DIE ;
 int WORKER_IDLE ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void destroy_worker(struct worker *worker)
{
 struct worker_pool *pool = worker->pool;

 lockdep_assert_held(&pool->lock);


 if (WARN_ON(worker->current_work) ||
     WARN_ON(!list_empty(&worker->scheduled)) ||
     WARN_ON(!(worker->flags & WORKER_IDLE)))
  return;

 pool->nr_workers--;
 pool->nr_idle--;

 list_del_init(&worker->entry);
 worker->flags |= WORKER_DIE;
 wake_up_process(worker->task);
}
