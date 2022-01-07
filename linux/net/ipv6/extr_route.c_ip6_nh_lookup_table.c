
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ fib6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {scalar_t__ flowi6_oif; int saddr; struct in6_addr const daddr; } ;
struct fib6_table {int dummy; } ;
struct fib6_result {scalar_t__ f6i; } ;
struct fib6_config {scalar_t__ fc_ifindex; int fc_prefsrc; } ;


 int EINVAL ;
 int RT6_LOOKUP_F_HAS_SADDR ;
 int RT6_LOOKUP_F_IGNORE_LINKSTATE ;
 struct fib6_table* fib6_get_table (struct net*,int ) ;
 int fib6_select_path (struct net*,struct fib6_result*,struct flowi6*,scalar_t__,int,int *,int) ;
 int fib6_table_lookup (struct net*,struct fib6_table*,scalar_t__,struct flowi6*,struct fib6_result*,int) ;
 int ipv6_addr_any (int *) ;

__attribute__((used)) static int ip6_nh_lookup_table(struct net *net, struct fib6_config *cfg,
          const struct in6_addr *gw_addr, u32 tbid,
          int flags, struct fib6_result *res)
{
 struct flowi6 fl6 = {
  .flowi6_oif = cfg->fc_ifindex,
  .daddr = *gw_addr,
  .saddr = cfg->fc_prefsrc,
 };
 struct fib6_table *table;
 int err;

 table = fib6_get_table(net, tbid);
 if (!table)
  return -EINVAL;

 if (!ipv6_addr_any(&cfg->fc_prefsrc))
  flags |= RT6_LOOKUP_F_HAS_SADDR;

 flags |= RT6_LOOKUP_F_IGNORE_LINKSTATE;

 err = fib6_table_lookup(net, table, cfg->fc_ifindex, &fl6, res, flags);
 if (!err && res->f6i != net->ipv6.fib6_null_entry)
  fib6_select_path(net, res, &fl6, cfg->fc_ifindex,
     cfg->fc_ifindex != 0, ((void*)0), flags);

 return err;
}
