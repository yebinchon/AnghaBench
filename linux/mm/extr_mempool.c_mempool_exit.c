
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * elements; int pool_data; int (* free ) (void*,int ) ;scalar_t__ curr_nr; } ;
typedef TYPE_1__ mempool_t ;


 int kfree (int *) ;
 void* remove_element (TYPE_1__*) ;
 int stub1 (void*,int ) ;

void mempool_exit(mempool_t *pool)
{
 while (pool->curr_nr) {
  void *element = remove_element(pool);
  pool->free(element, pool->pool_data);
 }
 kfree(pool->elements);
 pool->elements = ((void*)0);
}
