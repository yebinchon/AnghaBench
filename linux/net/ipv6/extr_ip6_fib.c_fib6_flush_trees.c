
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int __fib6_clean_all (struct net*,int *,int,int *,int) ;
 int fib6_new_sernum (struct net*) ;

__attribute__((used)) static void fib6_flush_trees(struct net *net)
{
 int new_sernum = fib6_new_sernum(net);

 __fib6_clean_all(net, ((void*)0), new_sernum, ((void*)0), 0);
}
