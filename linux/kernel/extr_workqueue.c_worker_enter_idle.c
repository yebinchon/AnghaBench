
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct worker_pool {scalar_t__ nr_idle; int flags; scalar_t__ nr_workers; int nr_running; int idle_timer; int idle_list; } ;
struct TYPE_2__ {scalar_t__ pprev; scalar_t__ next; } ;
struct worker {int flags; int entry; scalar_t__ last_active; TYPE_1__ hentry; struct worker_pool* pool; } ;


 scalar_t__ IDLE_WORKER_TIMEOUT ;
 int POOL_DISASSOCIATED ;
 int WARN_ON_ONCE (int) ;
 int WORKER_IDLE ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ jiffies ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int mod_timer (int *,scalar_t__) ;
 int timer_pending (int *) ;
 scalar_t__ too_many_workers (struct worker_pool*) ;

__attribute__((used)) static void worker_enter_idle(struct worker *worker)
{
 struct worker_pool *pool = worker->pool;

 if (WARN_ON_ONCE(worker->flags & WORKER_IDLE) ||
     WARN_ON_ONCE(!list_empty(&worker->entry) &&
    (worker->hentry.next || worker->hentry.pprev)))
  return;


 worker->flags |= WORKER_IDLE;
 pool->nr_idle++;
 worker->last_active = jiffies;


 list_add(&worker->entry, &pool->idle_list);

 if (too_many_workers(pool) && !timer_pending(&pool->idle_timer))
  mod_timer(&pool->idle_timer, jiffies + IDLE_WORKER_TIMEOUT);







 WARN_ON_ONCE(!(pool->flags & POOL_DISASSOCIATED) &&
       pool->nr_workers == pool->nr_idle &&
       atomic_read(&pool->nr_running));
}
