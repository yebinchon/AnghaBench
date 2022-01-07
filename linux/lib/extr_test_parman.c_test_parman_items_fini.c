
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct test_parman_item {int parman_item; TYPE_1__* prio; int used; } ;
struct test_parman {int parman; struct test_parman_item* items; } ;
struct TYPE_2__ {int parman_prio; } ;


 int TEST_PARMAN_ITEM_COUNT ;
 int parman_item_remove (int ,int *,int *) ;

__attribute__((used)) static void test_parman_items_fini(struct test_parman *test_parman)
{
 int i;

 for (i = 0; i < TEST_PARMAN_ITEM_COUNT; i++) {
  struct test_parman_item *item = &test_parman->items[i];

  if (!item->used)
   continue;
  parman_item_remove(test_parman->parman,
       &item->prio->parman_prio,
       &item->parman_item);
 }
}
