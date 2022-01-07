
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {scalar_t__ fib6_null_entry; } ;
struct net {TYPE_2__ ipv6; } ;
struct flowi6 {int dummy; } ;
struct TYPE_4__ {struct flowi6 ip6; } ;
struct flowi {TYPE_1__ u; } ;
struct fib_rule {int action; struct net* fr_net; } ;
struct fib_lookup_arg {scalar_t__ lookup_data; struct fib6_result* result; } ;
struct fib6_table {int dummy; } ;
struct fib6_result {scalar_t__ f6i; TYPE_3__* nh; } ;
struct TYPE_6__ {int fib_nh_dev; } ;


 int EACCES ;
 int EAGAIN ;
 int EINVAL ;
 int ENETUNREACH ;




 struct fib6_table* fib6_get_table (struct net*,int ) ;
 int fib6_rule_saddr (struct net*,struct fib_rule*,int,struct flowi6*,int ) ;
 int fib6_table_lookup (struct net*,struct fib6_table*,int,struct flowi6*,struct fib6_result*,int) ;
 int fib_rule_get_table (struct fib_rule*,struct fib_lookup_arg*) ;

__attribute__((used)) static int fib6_rule_action_alt(struct fib_rule *rule, struct flowi *flp,
    int flags, struct fib_lookup_arg *arg)
{
 struct fib6_result *res = arg->result;
 struct flowi6 *flp6 = &flp->u.ip6;
 struct net *net = rule->fr_net;
 struct fib6_table *table;
 int err, *oif;
 u32 tb_id;

 switch (rule->action) {
 case 129:
  break;
 case 128:
  return -ENETUNREACH;
 case 130:
  return -EACCES;
 case 131:
 default:
  return -EINVAL;
 }

 tb_id = fib_rule_get_table(rule, arg);
 table = fib6_get_table(net, tb_id);
 if (!table)
  return -EAGAIN;

 oif = (int *)arg->lookup_data;
 err = fib6_table_lookup(net, table, *oif, flp6, res, flags);
 if (!err && res->f6i != net->ipv6.fib6_null_entry)
  err = fib6_rule_saddr(net, rule, flags, flp6,
          res->nh->fib_nh_dev);
 else
  err = -EAGAIN;

 return err;
}
