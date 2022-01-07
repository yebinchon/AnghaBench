
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kthread_prio ;

int rcu_get_gp_kthreads_prio(void)
{
 return kthread_prio;
}
