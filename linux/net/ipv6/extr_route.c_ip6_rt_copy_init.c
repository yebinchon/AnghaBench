
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int rt6i_src; int rt6i_flags; int rt6i_gateway; int * rt6i_idev; int rt6i_dst; } ;
struct net_device {int dummy; } ;
struct fib6_result {int fib6_flags; struct fib6_info* f6i; struct fib6_nh* nh; } ;
struct fib6_nh {int fib_nh_gw6; scalar_t__ fib_nh_gw_family; struct net_device* fib_nh_dev; } ;
struct fib6_info {int fib6_src; int fib6_dst; } ;


 int RTF_GATEWAY ;
 int * in6_dev_get (struct net_device const*) ;
 int ip6_rt_init_dst (struct rt6_info*,struct fib6_result const*) ;
 int rt6_set_from (struct rt6_info*,struct fib6_info*) ;

__attribute__((used)) static void ip6_rt_copy_init(struct rt6_info *rt, const struct fib6_result *res)
{
 const struct fib6_nh *nh = res->nh;
 const struct net_device *dev = nh->fib_nh_dev;
 struct fib6_info *f6i = res->f6i;

 ip6_rt_init_dst(rt, res);

 rt->rt6i_dst = f6i->fib6_dst;
 rt->rt6i_idev = dev ? in6_dev_get(dev) : ((void*)0);
 rt->rt6i_flags = res->fib6_flags;
 if (nh->fib_nh_gw_family) {
  rt->rt6i_gateway = nh->fib_nh_gw6;
  rt->rt6i_flags |= RTF_GATEWAY;
 }
 rt6_set_from(rt, f6i);



}
