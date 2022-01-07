
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fib6_null_entry; int fib6_main_tbl; int fib6_local_tbl; int fib6_rules_ops; scalar_t__ fib6_has_custom_rules; } ;
struct net {TYPE_1__ ipv6; } ;
struct flowi6 {int dummy; } ;
struct fib_lookup_arg {int (* lookup_ptr ) (struct net*,int ,int,struct flowi6*,struct fib6_result*,int) ;int* lookup_data; int flags; struct fib6_result* result; } ;
struct fib6_result {scalar_t__ f6i; } ;


 int FIB_LOOKUP_NOREF ;
 int fib6_table_lookup (struct net*,int ,int,struct flowi6*,struct fib6_result*,int) ;
 int fib_rules_lookup (int ,int ,int,struct fib_lookup_arg*) ;
 int flowi6_to_flowi (struct flowi6*) ;
 int l3mdev_update_flow (struct net*,int ) ;

int fib6_lookup(struct net *net, int oif, struct flowi6 *fl6,
  struct fib6_result *res, int flags)
{
 int err;

 if (net->ipv6.fib6_has_custom_rules) {
  struct fib_lookup_arg arg = {
   .lookup_ptr = fib6_table_lookup,
   .lookup_data = &oif,
   .result = res,
   .flags = FIB_LOOKUP_NOREF,
  };

  l3mdev_update_flow(net, flowi6_to_flowi(fl6));

  err = fib_rules_lookup(net->ipv6.fib6_rules_ops,
           flowi6_to_flowi(fl6), flags, &arg);
 } else {
  err = fib6_table_lookup(net, net->ipv6.fib6_local_tbl, oif,
     fl6, res, flags);
  if (err || res->f6i == net->ipv6.fib6_null_entry)
   err = fib6_table_lookup(net, net->ipv6.fib6_main_tbl,
      oif, fl6, res, flags);
 }

 return err;
}
