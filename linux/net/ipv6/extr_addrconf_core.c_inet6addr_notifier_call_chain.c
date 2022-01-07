
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_notifier_call_chain (int *,unsigned long,void*) ;
 int inet6addr_chain ;

int inet6addr_notifier_call_chain(unsigned long val, void *v)
{
 return atomic_notifier_call_chain(&inet6addr_chain, val, v);
}
