
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zbud_pool {int dummy; } ;


 int kfree (struct zbud_pool*) ;

void zbud_destroy_pool(struct zbud_pool *pool)
{
 kfree(pool);
}
