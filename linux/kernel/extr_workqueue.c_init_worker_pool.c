
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int id; int cpu; int refcnt; int attrs; int hash_node; int worker_ida; int workers; int mayday_timer; int idle_timer; int busy_hash; int idle_list; int worklist; int watchdog_ts; int flags; int node; int lock; } ;


 int ENOMEM ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int NUMA_NO_NODE ;
 int POOL_DISASSOCIATED ;
 int TIMER_DEFERRABLE ;
 int alloc_workqueue_attrs () ;
 int hash_init (int ) ;
 int ida_init (int *) ;
 int idle_worker_timeout ;
 int jiffies ;
 int pool_mayday_timeout ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int init_worker_pool(struct worker_pool *pool)
{
 spin_lock_init(&pool->lock);
 pool->id = -1;
 pool->cpu = -1;
 pool->node = NUMA_NO_NODE;
 pool->flags |= POOL_DISASSOCIATED;
 pool->watchdog_ts = jiffies;
 INIT_LIST_HEAD(&pool->worklist);
 INIT_LIST_HEAD(&pool->idle_list);
 hash_init(pool->busy_hash);

 timer_setup(&pool->idle_timer, idle_worker_timeout, TIMER_DEFERRABLE);

 timer_setup(&pool->mayday_timer, pool_mayday_timeout, 0);

 INIT_LIST_HEAD(&pool->workers);

 ida_init(&pool->worker_ida);
 INIT_HLIST_NODE(&pool->hash_node);
 pool->refcnt = 1;


 pool->attrs = alloc_workqueue_attrs();
 if (!pool->attrs)
  return -ENOMEM;
 return 0;
}
