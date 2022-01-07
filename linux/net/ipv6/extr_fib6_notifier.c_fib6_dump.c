
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net {int dummy; } ;


 int fib6_rules_dump (struct net*,struct notifier_block*) ;
 int fib6_tables_dump (struct net*,struct notifier_block*) ;

__attribute__((used)) static int fib6_dump(struct net *net, struct notifier_block *nb)
{
 int err;

 err = fib6_rules_dump(net, nb);
 if (err)
  return err;

 return fib6_tables_dump(net, nb);
}
