
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_parman_item {int dummy; } ;
struct test_parman {unsigned long prio_array_limit; struct test_parman_item** prio_array; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ITEM_PTRS_SIZE (unsigned long) ;
 struct test_parman_item** krealloc (struct test_parman_item**,int ,int ) ;
 int memset (struct test_parman_item**,int ,int ) ;

__attribute__((used)) static int test_parman_resize(void *priv, unsigned long new_count)
{
 struct test_parman *test_parman = priv;
 struct test_parman_item **prio_array;
 unsigned long old_count;

 prio_array = krealloc(test_parman->prio_array,
         ITEM_PTRS_SIZE(new_count), GFP_KERNEL);
 if (new_count == 0)
  return 0;
 if (!prio_array)
  return -ENOMEM;
 old_count = test_parman->prio_array_limit;
 if (new_count > old_count)
  memset(&prio_array[old_count], 0,
         ITEM_PTRS_SIZE(new_count - old_count));
 test_parman->prio_array = prio_array;
 test_parman->prio_array_limit = new_count;
 return 0;
}
