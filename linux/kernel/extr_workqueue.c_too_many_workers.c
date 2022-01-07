
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int flags; int nr_idle; int nr_workers; } ;


 int MAX_IDLE_WORKERS_RATIO ;
 int POOL_MANAGER_ACTIVE ;

__attribute__((used)) static bool too_many_workers(struct worker_pool *pool)
{
 bool managing = pool->flags & POOL_MANAGER_ACTIVE;
 int nr_idle = pool->nr_idle + managing;
 int nr_busy = pool->nr_workers - nr_idle;

 return nr_idle > 2 && (nr_idle - 2) * MAX_IDLE_WORKERS_RATIO >= nr_busy;
}
