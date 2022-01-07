
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {struct completion* detach_completion; int workers; } ;
struct worker {int flags; struct worker_pool* pool; int node; } ;
struct completion {int dummy; } ;


 int WORKER_REBOUND ;
 int WORKER_UNBOUND ;
 int complete (struct completion*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wq_pool_attach_mutex ;

__attribute__((used)) static void worker_detach_from_pool(struct worker *worker)
{
 struct worker_pool *pool = worker->pool;
 struct completion *detach_completion = ((void*)0);

 mutex_lock(&wq_pool_attach_mutex);

 list_del(&worker->node);
 worker->pool = ((void*)0);

 if (list_empty(&pool->workers))
  detach_completion = pool->detach_completion;
 mutex_unlock(&wq_pool_attach_mutex);


 worker->flags &= ~(WORKER_UNBOUND | WORKER_REBOUND);

 if (detach_completion)
  complete(detach_completion);
}
