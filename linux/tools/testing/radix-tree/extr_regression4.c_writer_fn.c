
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mt_tree ;
 int obj1 ;
 int pthread_barrier_wait (int *) ;
 int radix_tree_delete (int *,int) ;
 int radix_tree_insert (int *,int,int *) ;
 int rcu_register_thread () ;
 int rcu_unregister_thread () ;
 int worker_barrier ;

__attribute__((used)) static void *writer_fn(void *arg)
{
 int i;

 rcu_register_thread();
 pthread_barrier_wait(&worker_barrier);

 for (i = 0; i < 1000000; i++) {
  radix_tree_insert(&mt_tree, 1, &obj1);
  radix_tree_delete(&mt_tree, 1);
 }

 rcu_unregister_thread();

 return ((void*)0);
}
