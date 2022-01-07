
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atomic_notifier_head {int dummy; } ;


 int __atomic_notifier_call_chain (struct atomic_notifier_head*,unsigned long,void*,int,int *) ;

int atomic_notifier_call_chain(struct atomic_notifier_head *nh,
          unsigned long val, void *v)
{
 return __atomic_notifier_call_chain(nh, val, v, -1, ((void*)0));
}
