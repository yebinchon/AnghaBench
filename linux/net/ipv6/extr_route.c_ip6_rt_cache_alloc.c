
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct TYPE_8__ {int plen; struct in6_addr addr; } ;
struct TYPE_6__ {int plen; struct in6_addr addr; } ;
struct TYPE_5__ {int flags; } ;
struct rt6_info {TYPE_4__ rt6i_src; int rt6i_flags; TYPE_2__ rt6i_dst; TYPE_1__ dst; } ;
struct net_device {int dummy; } ;
struct fib6_result {struct fib6_info* f6i; } ;
struct TYPE_7__ {int plen; int addr; } ;
struct fib6_info {TYPE_3__ fib6_dst; } ;


 int DST_HOST ;
 int RTF_ANYCAST ;
 int RTF_CACHE ;
 int dev_net (struct net_device*) ;
 int fib6_info_hold_safe (struct fib6_info*) ;
 int fib6_info_release (struct fib6_info*) ;
 struct rt6_info* ip6_dst_alloc (int ,struct net_device*,int ) ;
 int ip6_rt_copy_init (struct rt6_info*,struct fib6_result const*) ;
 struct net_device* ip6_rt_get_dev_rcu (struct fib6_result const*) ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr const*) ;
 int rt6_is_gw_or_nonexthop (struct fib6_result const*) ;

__attribute__((used)) static struct rt6_info *ip6_rt_cache_alloc(const struct fib6_result *res,
        const struct in6_addr *daddr,
        const struct in6_addr *saddr)
{
 struct fib6_info *f6i = res->f6i;
 struct net_device *dev;
 struct rt6_info *rt;





 if (!fib6_info_hold_safe(f6i))
  return ((void*)0);

 dev = ip6_rt_get_dev_rcu(res);
 rt = ip6_dst_alloc(dev_net(dev), dev, 0);
 if (!rt) {
  fib6_info_release(f6i);
  return ((void*)0);
 }

 ip6_rt_copy_init(rt, res);
 rt->rt6i_flags |= RTF_CACHE;
 rt->dst.flags |= DST_HOST;
 rt->rt6i_dst.addr = *daddr;
 rt->rt6i_dst.plen = 128;

 if (!rt6_is_gw_or_nonexthop(res)) {
  if (f6i->fib6_dst.plen != 128 &&
      ipv6_addr_equal(&f6i->fib6_dst.addr, daddr))
   rt->rt6i_flags |= RTF_ANYCAST;






 }

 return rt;
}
