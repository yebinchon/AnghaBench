
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {scalar_t__ cpu; scalar_t__ id; int flags; int rcu; int mayday_timer; int idle_timer; int * detach_completion; int workers; int lock; scalar_t__ nr_idle; scalar_t__ nr_workers; int hash_node; int worklist; scalar_t__ refcnt; } ;
struct worker {int dummy; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int POOL_MANAGER_ACTIVE ;
 scalar_t__ WARN_ON (int) ;
 int call_rcu (int *,int ) ;
 int del_timer_sync (int *) ;
 int destroy_worker (struct worker*) ;
 int detach_completion ;
 struct worker* first_idle_worker (struct worker_pool*) ;
 int hash_del (int *) ;
 int idr_remove (int *,scalar_t__) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_free_pool ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event_lock_irq (int ,int,int ) ;
 int wait_for_completion (int *) ;
 int worker_pool_idr ;
 int wq_manager_wait ;
 int wq_pool_attach_mutex ;
 int wq_pool_mutex ;

__attribute__((used)) static void put_unbound_pool(struct worker_pool *pool)
{
 DECLARE_COMPLETION_ONSTACK(detach_completion);
 struct worker *worker;

 lockdep_assert_held(&wq_pool_mutex);

 if (--pool->refcnt)
  return;


 if (WARN_ON(!(pool->cpu < 0)) ||
     WARN_ON(!list_empty(&pool->worklist)))
  return;


 if (pool->id >= 0)
  idr_remove(&worker_pool_idr, pool->id);
 hash_del(&pool->hash_node);






 spin_lock_irq(&pool->lock);
 wait_event_lock_irq(wq_manager_wait,
       !(pool->flags & POOL_MANAGER_ACTIVE), pool->lock);
 pool->flags |= POOL_MANAGER_ACTIVE;

 while ((worker = first_idle_worker(pool)))
  destroy_worker(worker);
 WARN_ON(pool->nr_workers || pool->nr_idle);
 spin_unlock_irq(&pool->lock);

 mutex_lock(&wq_pool_attach_mutex);
 if (!list_empty(&pool->workers))
  pool->detach_completion = &detach_completion;
 mutex_unlock(&wq_pool_attach_mutex);

 if (pool->detach_completion)
  wait_for_completion(pool->detach_completion);


 del_timer_sync(&pool->idle_timer);
 del_timer_sync(&pool->mayday_timer);


 call_rcu(&pool->rcu, rcu_free_pool);
}
