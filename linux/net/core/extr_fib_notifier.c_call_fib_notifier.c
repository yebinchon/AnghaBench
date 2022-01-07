
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int (* notifier_call ) (struct notifier_block*,int,struct fib_notifier_info*) ;} ;
struct net {int dummy; } ;
struct fib_notifier_info {struct net* net; } ;
typedef enum fib_event_type { ____Placeholder_fib_event_type } fib_event_type ;


 int notifier_to_errno (int) ;
 int stub1 (struct notifier_block*,int,struct fib_notifier_info*) ;

int call_fib_notifier(struct notifier_block *nb, struct net *net,
        enum fib_event_type event_type,
        struct fib_notifier_info *info)
{
 int err;

 info->net = net;
 err = nb->notifier_call(nb, event_type, info);
 return notifier_to_errno(err);
}
