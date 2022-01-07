
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ida_check_random () ;
 int rcu_register_thread () ;
 int rcu_unregister_thread () ;

__attribute__((used)) static void *ida_random_fn(void *arg)
{
 rcu_register_thread();
 ida_check_random();
 rcu_unregister_thread();
 return ((void*)0);
}
