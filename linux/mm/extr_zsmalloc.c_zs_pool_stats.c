
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_pool_stats {int dummy; } ;
struct zs_pool {int stats; } ;


 int memcpy (struct zs_pool_stats*,int *,int) ;

void zs_pool_stats(struct zs_pool *pool, struct zs_pool_stats *stats)
{
 memcpy(stats, &pool->stats, sizeof(struct zs_pool_stats));
}
