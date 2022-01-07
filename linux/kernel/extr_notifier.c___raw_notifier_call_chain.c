
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_notifier_head {int head; } ;


 int notifier_call_chain (int *,unsigned long,void*,int,int*) ;

int __raw_notifier_call_chain(struct raw_notifier_head *nh,
         unsigned long val, void *v,
         int nr_to_call, int *nr_calls)
{
 return notifier_call_chain(&nh->head, val, v, nr_to_call, nr_calls);
}
