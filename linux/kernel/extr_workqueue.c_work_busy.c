
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int lock; } ;
struct work_struct {int dummy; } ;


 unsigned int WORK_BUSY_PENDING ;
 unsigned int WORK_BUSY_RUNNING ;
 scalar_t__ find_worker_executing_work (struct worker_pool*,struct work_struct*) ;
 struct worker_pool* get_work_pool (struct work_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ work_pending (struct work_struct*) ;

unsigned int work_busy(struct work_struct *work)
{
 struct worker_pool *pool;
 unsigned long flags;
 unsigned int ret = 0;

 if (work_pending(work))
  ret |= WORK_BUSY_PENDING;

 rcu_read_lock();
 pool = get_work_pool(work);
 if (pool) {
  spin_lock_irqsave(&pool->lock, flags);
  if (find_worker_executing_work(pool, work))
   ret |= WORK_BUSY_RUNNING;
  spin_unlock_irqrestore(&pool->lock, flags);
 }
 rcu_read_unlock();

 return ret;
}
