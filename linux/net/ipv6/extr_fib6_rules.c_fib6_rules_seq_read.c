
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int AF_INET6 ;
 unsigned int fib_rules_seq_read (struct net*,int ) ;

unsigned int fib6_rules_seq_read(struct net *net)
{
 return fib_rules_seq_read(net, AF_INET6);
}
