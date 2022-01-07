
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int nr_idle; } ;
struct worker {int flags; int entry; struct worker_pool* pool; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int WORKER_IDLE ;
 int list_del_init (int *) ;
 int worker_clr_flags (struct worker*,int) ;

__attribute__((used)) static void worker_leave_idle(struct worker *worker)
{
 struct worker_pool *pool = worker->pool;

 if (WARN_ON_ONCE(!(worker->flags & WORKER_IDLE)))
  return;
 worker_clr_flags(worker, WORKER_IDLE);
 pool->nr_idle--;
 list_del_init(&worker->entry);
}
