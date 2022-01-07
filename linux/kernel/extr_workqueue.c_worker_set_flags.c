
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int nr_running; } ;
struct worker {scalar_t__ task; unsigned int flags; struct worker_pool* pool; } ;


 int WARN_ON_ONCE (int) ;
 unsigned int WORKER_NOT_RUNNING ;
 int atomic_dec (int *) ;
 scalar_t__ current ;

__attribute__((used)) static inline void worker_set_flags(struct worker *worker, unsigned int flags)
{
 struct worker_pool *pool = worker->pool;

 WARN_ON_ONCE(worker->task != current);


 if ((flags & WORKER_NOT_RUNNING) &&
     !(worker->flags & WORKER_NOT_RUNNING)) {
  atomic_dec(&pool->nr_running);
 }

 worker->flags |= flags;
}
