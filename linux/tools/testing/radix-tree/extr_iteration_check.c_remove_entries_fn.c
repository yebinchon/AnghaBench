
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int dummy; } ;


 int MAX_IDX ;
 int array ;
 int item_free (struct item*,int) ;
 int rand_r (int *) ;
 int rcu_register_thread () ;
 int rcu_unregister_thread () ;
 int * seeds ;
 int test_complete ;
 struct item* xa_erase (int *,int) ;

__attribute__((used)) static void *remove_entries_fn(void *arg)
{
 rcu_register_thread();

 while (!test_complete) {
  int pgoff;
  struct item *item;

  pgoff = rand_r(&seeds[2]) % MAX_IDX;

  item = xa_erase(&array, pgoff);
  if (item)
   item_free(item, pgoff);
 }

 rcu_unregister_thread();

 return ((void*)0);
}
