
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct worker_pool {int flags; int workers; TYPE_1__* attrs; } ;
struct worker {struct worker_pool* pool; int node; int flags; int task; } ;
struct TYPE_2__ {int cpumask; } ;


 int POOL_DISASSOCIATED ;
 int WORKER_UNBOUND ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_cpus_allowed_ptr (int ,int ) ;
 int wq_pool_attach_mutex ;

__attribute__((used)) static void worker_attach_to_pool(struct worker *worker,
       struct worker_pool *pool)
{
 mutex_lock(&wq_pool_attach_mutex);





 set_cpus_allowed_ptr(worker->task, pool->attrs->cpumask);






 if (pool->flags & POOL_DISASSOCIATED)
  worker->flags |= WORKER_UNBOUND;

 list_add_tail(&worker->node, &pool->workers);
 worker->pool = pool;

 mutex_unlock(&wq_pool_attach_mutex);
}
