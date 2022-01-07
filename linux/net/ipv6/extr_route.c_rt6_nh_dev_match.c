
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nexthop {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct fib6_result {int dummy; } ;
struct fib6_nh_dm_arg {int oif; int flags; struct fib6_nh* nh; struct in6_addr const* saddr; struct net* net; } ;
struct fib6_nh {int dummy; } ;


 int __rt6_nh_dev_match ;
 scalar_t__ nexthop_for_each_fib6_nh (struct nexthop*,int ,struct fib6_nh_dm_arg*) ;
 scalar_t__ nexthop_is_blackhole (struct nexthop*) ;

__attribute__((used)) static struct fib6_nh *rt6_nh_dev_match(struct net *net, struct nexthop *nh,
     struct fib6_result *res,
     const struct in6_addr *saddr,
     int oif, int flags)
{
 struct fib6_nh_dm_arg arg = {
  .net = net,
  .saddr = saddr,
  .oif = oif,
  .flags = flags,
 };

 if (nexthop_is_blackhole(nh))
  return ((void*)0);

 if (nexthop_for_each_fib6_nh(nh, __rt6_nh_dev_match, &arg))
  return arg.nh;

 return ((void*)0);
}
