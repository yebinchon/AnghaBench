
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mempool_t ;


 int kfree (int *) ;
 int mempool_exit (int *) ;
 scalar_t__ unlikely (int) ;

void mempool_destroy(mempool_t *pool)
{
 if (unlikely(!pool))
  return;

 mempool_exit(pool);
 kfree(pool);
}
