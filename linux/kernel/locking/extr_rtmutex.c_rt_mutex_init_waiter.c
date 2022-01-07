
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex_waiter {int * task; int tree_entry; int pi_tree_entry; } ;


 int RB_CLEAR_NODE (int *) ;
 int debug_rt_mutex_init_waiter (struct rt_mutex_waiter*) ;

void rt_mutex_init_waiter(struct rt_mutex_waiter *waiter)
{
 debug_rt_mutex_init_waiter(waiter);
 RB_CLEAR_NODE(&waiter->pi_tree_entry);
 RB_CLEAR_NODE(&waiter->tree_entry);
 waiter->task = ((void*)0);
}
