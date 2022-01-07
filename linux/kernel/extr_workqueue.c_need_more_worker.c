
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int worklist; } ;


 scalar_t__ __need_more_worker (struct worker_pool*) ;
 int list_empty (int *) ;

__attribute__((used)) static bool need_more_worker(struct worker_pool *pool)
{
 return !list_empty(&pool->worklist) && __need_more_worker(pool);
}
