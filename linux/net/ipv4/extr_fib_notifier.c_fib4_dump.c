
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net {int dummy; } ;


 int fib4_rules_dump (struct net*,struct notifier_block*) ;
 int fib_notify (struct net*,struct notifier_block*) ;

__attribute__((used)) static int fib4_dump(struct net *net, struct notifier_block *nb)
{
 int err;

 err = fib4_rules_dump(net, nb);
 if (err)
  return err;

 fib_notify(net, nb);

 return 0;
}
