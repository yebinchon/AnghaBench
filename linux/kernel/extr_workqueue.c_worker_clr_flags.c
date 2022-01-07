
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int nr_running; } ;
struct worker {unsigned int flags; scalar_t__ task; struct worker_pool* pool; } ;


 int WARN_ON_ONCE (int) ;
 unsigned int WORKER_NOT_RUNNING ;
 int atomic_inc (int *) ;
 scalar_t__ current ;

__attribute__((used)) static inline void worker_clr_flags(struct worker *worker, unsigned int flags)
{
 struct worker_pool *pool = worker->pool;
 unsigned int oflags = worker->flags;

 WARN_ON_ONCE(worker->task != current);

 worker->flags &= ~flags;






 if ((flags & WORKER_NOT_RUNNING) && (oflags & WORKER_NOT_RUNNING))
  if (!(worker->flags & WORKER_NOT_RUNNING))
   atomic_inc(&pool->nr_running);
}
