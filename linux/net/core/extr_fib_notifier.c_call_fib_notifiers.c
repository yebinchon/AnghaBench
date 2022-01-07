
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct fib_notifier_info {struct net* net; } ;
typedef enum fib_event_type { ____Placeholder_fib_event_type } fib_event_type ;


 int atomic_notifier_call_chain (int *,int,struct fib_notifier_info*) ;
 int fib_chain ;
 int notifier_to_errno (int) ;

int call_fib_notifiers(struct net *net, enum fib_event_type event_type,
         struct fib_notifier_info *info)
{
 int err;

 info->net = net;
 err = atomic_notifier_call_chain(&fib_chain, event_type, info);
 return notifier_to_errno(err);
}
