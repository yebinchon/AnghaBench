
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net {int dummy; } ;


 int AF_INET ;
 int fib_rules_dump (struct net*,struct notifier_block*,int ) ;

int fib4_rules_dump(struct net *net, struct notifier_block *nb)
{
 return fib_rules_dump(net, nb, AF_INET);
}
