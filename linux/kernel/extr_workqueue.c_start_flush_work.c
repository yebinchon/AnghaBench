
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wq_barrier {int dummy; } ;
struct worker_pool {int lock; } ;
struct worker {struct pool_workqueue* current_pwq; } ;
struct work_struct {int dummy; } ;
struct pool_workqueue {TYPE_1__* wq; struct worker_pool* pool; } ;
struct TYPE_2__ {int saved_max_active; int lockdep_map; scalar_t__ rescuer; } ;


 int check_flush_dependency (TYPE_1__*,struct work_struct*) ;
 struct worker* find_worker_executing_work (struct worker_pool*,struct work_struct*) ;
 struct worker_pool* get_work_pool (struct work_struct*) ;
 struct pool_workqueue* get_work_pwq (struct work_struct*) ;
 int insert_wq_barrier (struct pool_workqueue*,struct wq_barrier*,struct work_struct*,struct worker*) ;
 int lock_map_acquire (int *) ;
 int lock_map_release (int *) ;
 int might_sleep () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool start_flush_work(struct work_struct *work, struct wq_barrier *barr,
        bool from_cancel)
{
 struct worker *worker = ((void*)0);
 struct worker_pool *pool;
 struct pool_workqueue *pwq;

 might_sleep();

 rcu_read_lock();
 pool = get_work_pool(work);
 if (!pool) {
  rcu_read_unlock();
  return 0;
 }

 spin_lock_irq(&pool->lock);

 pwq = get_work_pwq(work);
 if (pwq) {
  if (unlikely(pwq->pool != pool))
   goto already_gone;
 } else {
  worker = find_worker_executing_work(pool, work);
  if (!worker)
   goto already_gone;
  pwq = worker->current_pwq;
 }

 check_flush_dependency(pwq->wq, work);

 insert_wq_barrier(pwq, barr, work, worker);
 spin_unlock_irq(&pool->lock);
 if (!from_cancel &&
     (pwq->wq->saved_max_active == 1 || pwq->wq->rescuer)) {
  lock_map_acquire(&pwq->wq->lockdep_map);
  lock_map_release(&pwq->wq->lockdep_map);
 }
 rcu_read_unlock();
 return 1;
already_gone:
 spin_unlock_irq(&pool->lock);
 rcu_read_unlock();
 return 0;
}
