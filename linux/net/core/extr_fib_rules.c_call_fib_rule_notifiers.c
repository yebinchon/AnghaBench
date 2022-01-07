
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct fib_rules_ops {int fib_rules_seq; int family; } ;
struct TYPE_2__ {struct netlink_ext_ack* extack; int family; } ;
struct fib_rule_notifier_info {TYPE_1__ info; struct fib_rule* rule; } ;
struct fib_rule {int dummy; } ;
typedef enum fib_event_type { ____Placeholder_fib_event_type } fib_event_type ;


 int call_fib_notifiers (struct net*,int,TYPE_1__*) ;

__attribute__((used)) static int call_fib_rule_notifiers(struct net *net,
       enum fib_event_type event_type,
       struct fib_rule *rule,
       struct fib_rules_ops *ops,
       struct netlink_ext_ack *extack)
{
 struct fib_rule_notifier_info info = {
  .info.family = ops->family,
  .info.extack = extack,
  .rule = rule,
 };

 ops->fib_rules_seq++;
 return call_fib_notifiers(net, event_type, &info.info);
}
