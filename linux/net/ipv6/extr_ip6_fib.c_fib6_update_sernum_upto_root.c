
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct fib6_info {int dummy; } ;


 int __fib6_update_sernum_upto_root (struct fib6_info*,int ) ;
 int fib6_new_sernum (struct net*) ;

void fib6_update_sernum_upto_root(struct net *net, struct fib6_info *rt)
{
 __fib6_update_sernum_upto_root(rt, fib6_new_sernum(net));
}
