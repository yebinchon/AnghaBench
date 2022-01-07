
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t curr_nr; void** elements; } ;
typedef TYPE_1__ mempool_t ;


 int BUG_ON (int) ;
 int check_element (TYPE_1__*,void*) ;
 int kasan_unpoison_element (TYPE_1__*,void*) ;

__attribute__((used)) static void *remove_element(mempool_t *pool)
{
 void *element = pool->elements[--pool->curr_nr];

 BUG_ON(pool->curr_nr < 0);
 kasan_unpoison_element(pool, element);
 check_element(pool, element);
 return element;
}
