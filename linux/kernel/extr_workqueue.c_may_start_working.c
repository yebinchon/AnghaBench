
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int nr_idle; } ;



__attribute__((used)) static bool may_start_working(struct worker_pool *pool)
{
 return pool->nr_idle;
}
