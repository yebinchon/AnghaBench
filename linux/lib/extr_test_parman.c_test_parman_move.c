
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_parman_item {int dummy; } ;
struct test_parman {struct test_parman_item** prio_array; } ;


 int ITEM_PTRS_SIZE (unsigned long) ;
 int memmove (struct test_parman_item**,struct test_parman_item**,int ) ;
 int memset (struct test_parman_item**,int ,int ) ;

__attribute__((used)) static void test_parman_move(void *priv, unsigned long from_index,
        unsigned long to_index, unsigned long count)
{
 struct test_parman *test_parman = priv;
 struct test_parman_item **prio_array = test_parman->prio_array;

 memmove(&prio_array[to_index], &prio_array[from_index],
  ITEM_PTRS_SIZE(count));
 memset(&prio_array[from_index], 0, ITEM_PTRS_SIZE(count));
}
