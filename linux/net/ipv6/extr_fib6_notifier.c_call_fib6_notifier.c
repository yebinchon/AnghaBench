
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net {int dummy; } ;
struct fib_notifier_info {int family; } ;
typedef enum fib_event_type { ____Placeholder_fib_event_type } fib_event_type ;


 int AF_INET6 ;
 int call_fib_notifier (struct notifier_block*,struct net*,int,struct fib_notifier_info*) ;

int call_fib6_notifier(struct notifier_block *nb, struct net *net,
         enum fib_event_type event_type,
         struct fib_notifier_info *info)
{
 info->family = AF_INET6;
 return call_fib_notifier(nb, net, event_type, info);
}
