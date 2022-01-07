
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blocking_notifier_head {int rwsem; int head; } ;


 int NOTIFY_DONE ;
 int down_read (int *) ;
 int notifier_call_chain (int *,unsigned long,void*,int,int*) ;
 scalar_t__ rcu_access_pointer (int ) ;
 int up_read (int *) ;

int __blocking_notifier_call_chain(struct blocking_notifier_head *nh,
       unsigned long val, void *v,
       int nr_to_call, int *nr_calls)
{
 int ret = NOTIFY_DONE;






 if (rcu_access_pointer(nh->head)) {
  down_read(&nh->rwsem);
  ret = notifier_call_chain(&nh->head, val, v, nr_to_call,
     nr_calls);
  up_read(&nh->rwsem);
 }
 return ret;
}
