
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_parman_item {int * prio; } ;
struct test_parman {int * prios; struct test_parman_item* items; } ;


 int TEST_PARMAN_ITEM_COUNT ;
 unsigned int TEST_PARMAN_PRIO_MASK ;
 unsigned int test_parman_rnd_get (struct test_parman*) ;

__attribute__((used)) static void test_parman_items_init(struct test_parman *test_parman)
{
 int i;

 for (i = 0; i < TEST_PARMAN_ITEM_COUNT; i++) {
  struct test_parman_item *item = &test_parman->items[i];
  unsigned int prio_index = test_parman_rnd_get(test_parman) &
       TEST_PARMAN_PRIO_MASK;


  item->prio = &test_parman->prios[prio_index];
 }
}
