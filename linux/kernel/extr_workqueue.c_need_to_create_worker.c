
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int dummy; } ;


 int may_start_working (struct worker_pool*) ;
 scalar_t__ need_more_worker (struct worker_pool*) ;

__attribute__((used)) static bool need_to_create_worker(struct worker_pool *pool)
{
 return need_more_worker(pool) && !may_start_working(pool);
}
