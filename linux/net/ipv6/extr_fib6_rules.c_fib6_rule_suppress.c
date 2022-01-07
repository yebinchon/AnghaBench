
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ plen; } ;
struct rt6_info {TYPE_1__ rt6i_dst; TYPE_2__* rt6i_idev; } ;
struct net_device {scalar_t__ group; } ;
struct fib_rule {scalar_t__ suppress_prefixlen; int suppress_ifgroup; } ;
struct fib_lookup_arg {int flags; struct fib6_result* result; } ;
struct fib6_result {struct rt6_info* rt6; } ;
struct TYPE_4__ {struct net_device* dev; } ;


 int FIB_LOOKUP_NOREF ;
 int ip6_rt_put (struct rt6_info*) ;

__attribute__((used)) static bool fib6_rule_suppress(struct fib_rule *rule, struct fib_lookup_arg *arg)
{
 struct fib6_result *res = arg->result;
 struct rt6_info *rt = res->rt6;
 struct net_device *dev = ((void*)0);

 if (!rt)
  return 0;

 if (rt->rt6i_idev)
  dev = rt->rt6i_idev->dev;




 if (rt->rt6i_dst.plen <= rule->suppress_prefixlen)
  goto suppress_route;




 if (rule->suppress_ifgroup != -1 && dev && dev->group == rule->suppress_ifgroup)
  goto suppress_route;

 return 0;

suppress_route:
 if (!(arg->flags & FIB_LOOKUP_NOREF))
  ip6_rt_put(rt);
 return 1;
}
