
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zbud_pool {int pages_nr; } ;



u64 zbud_get_pool_size(struct zbud_pool *pool)
{
 return pool->pages_nr;
}
