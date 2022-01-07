
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MAX_IDX ;
 int array ;
 int my_item_insert (int *,unsigned long) ;
 int rcu_register_thread () ;
 int rcu_unregister_thread () ;
 int test_complete ;

__attribute__((used)) static void *add_entries_fn(void *arg)
{
 rcu_register_thread();

 while (!test_complete) {
  unsigned long pgoff;

  for (pgoff = 0; pgoff < MAX_IDX; pgoff++) {
   my_item_insert(&array, pgoff);
  }
 }

 rcu_unregister_thread();

 return ((void*)0);
}
