
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atomic_notifier_head {int head; } ;


 int notifier_call_chain (int *,unsigned long,void*,int,int*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int __atomic_notifier_call_chain(struct atomic_notifier_head *nh,
     unsigned long val, void *v,
     int nr_to_call, int *nr_calls)
{
 int ret;

 rcu_read_lock();
 ret = notifier_call_chain(&nh->head, val, v, nr_to_call, nr_calls);
 rcu_read_unlock();
 return ret;
}
