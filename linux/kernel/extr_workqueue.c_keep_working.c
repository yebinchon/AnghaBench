
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int nr_running; int worklist; } ;


 int atomic_read (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static bool keep_working(struct worker_pool *pool)
{
 return !list_empty(&pool->worklist) &&
  atomic_read(&pool->nr_running) <= 1;
}
