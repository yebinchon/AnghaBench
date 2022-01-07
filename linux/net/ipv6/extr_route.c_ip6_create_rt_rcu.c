
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rt6_info {int dst; } ;
struct net_device {int dummy; } ;
struct fib6_result {struct fib6_info* f6i; TYPE_2__* nh; } ;
struct fib6_info {int dummy; } ;
struct TYPE_5__ {struct rt6_info* ip6_null_entry; } ;
struct TYPE_7__ {TYPE_1__ ipv6; } ;
struct TYPE_6__ {struct net_device* fib_nh_dev; } ;


 TYPE_3__* dev_net (struct net_device*) ;
 int dst_hold (int *) ;
 unsigned short fib6_info_dst_flags (struct fib6_info*) ;
 int fib6_info_hold_safe (struct fib6_info*) ;
 int fib6_info_release (struct fib6_info*) ;
 struct rt6_info* ip6_dst_alloc (TYPE_3__*,struct net_device*,unsigned short) ;
 int ip6_rt_copy_init (struct rt6_info*,struct fib6_result const*) ;

__attribute__((used)) static struct rt6_info *ip6_create_rt_rcu(const struct fib6_result *res)
{
 struct net_device *dev = res->nh->fib_nh_dev;
 struct fib6_info *f6i = res->f6i;
 unsigned short flags;
 struct rt6_info *nrt;

 if (!fib6_info_hold_safe(f6i))
  goto fallback;

 flags = fib6_info_dst_flags(f6i);
 nrt = ip6_dst_alloc(dev_net(dev), dev, flags);
 if (!nrt) {
  fib6_info_release(f6i);
  goto fallback;
 }

 ip6_rt_copy_init(nrt, res);
 return nrt;

fallback:
 nrt = dev_net(dev)->ipv6.ip6_null_entry;
 dst_hold(&nrt->dst);
 return nrt;
}
