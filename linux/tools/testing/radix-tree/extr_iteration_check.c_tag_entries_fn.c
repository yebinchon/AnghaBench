
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_IDX ;
 int NEW_TAG ;
 int TAG ;
 int array ;
 int rcu_register_thread () ;
 int rcu_unregister_thread () ;
 int tag_tagged_items (int *,int ,int ,int,int ,int ) ;
 int test_complete ;

__attribute__((used)) static void *tag_entries_fn(void *arg)
{
 rcu_register_thread();

 while (!test_complete) {
  tag_tagged_items(&array, 0, MAX_IDX, 10, TAG, NEW_TAG);
 }
 rcu_unregister_thread();
 return ((void*)0);
}
