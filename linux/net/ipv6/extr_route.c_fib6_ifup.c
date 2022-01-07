
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct fib6_info* fib6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib6_info {TYPE_2__* fib6_nh; int nh; } ;
struct arg_netdev_event {scalar_t__ dev; int nh_flags; } ;
struct TYPE_4__ {scalar_t__ fib_nh_dev; int fib_nh_flags; } ;


 struct net* dev_net (scalar_t__) ;
 int fib6_update_sernum_upto_root (struct net*,struct fib6_info*) ;
 int rt6_multipath_rebalance (struct fib6_info*) ;

__attribute__((used)) static int fib6_ifup(struct fib6_info *rt, void *p_arg)
{
 const struct arg_netdev_event *arg = p_arg;
 struct net *net = dev_net(arg->dev);

 if (rt != net->ipv6.fib6_null_entry && !rt->nh &&
     rt->fib6_nh->fib_nh_dev == arg->dev) {
  rt->fib6_nh->fib_nh_flags &= ~arg->nh_flags;
  fib6_update_sernum_upto_root(net, rt);
  rt6_multipath_rebalance(rt);
 }

 return 0;
}
