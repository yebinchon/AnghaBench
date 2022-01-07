
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fib6_main_tbl; } ;
struct net {TYPE_1__ ipv6; } ;
struct flowi6 {int dummy; } ;
struct fib6_result {int dummy; } ;


 int fib6_table_lookup (struct net*,int ,int,struct flowi6*,struct fib6_result*,int) ;

int fib6_lookup(struct net *net, int oif, struct flowi6 *fl6,
  struct fib6_result *res, int flags)
{
 return fib6_table_lookup(net, net->ipv6.fib6_main_tbl, oif, fl6,
     res, flags);
}
