
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 unsigned int fib6_rules_seq_read (struct net*) ;
 unsigned int fib6_tables_seq_read (struct net*) ;

__attribute__((used)) static unsigned int fib6_seq_read(struct net *net)
{
 return fib6_tables_seq_read(net) + fib6_rules_seq_read(net);
}
