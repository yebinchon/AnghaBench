
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt6_info {int rt6i_gateway; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {scalar_t__ flowi6_oif; int saddr; int daddr; } ;
struct fib6_result {struct fib6_nh* nh; } ;
struct fib6_nh {int fib_nh_flags; int fib_nh_gw6; TYPE_1__* fib_nh_dev; int fib_nh_gw_family; } ;
struct TYPE_2__ {scalar_t__ ifindex; } ;


 int RTNH_F_DEAD ;
 scalar_t__ ipv6_addr_equal (struct in6_addr const*,int *) ;
 struct rt6_info* rt6_find_cached_rt (struct fib6_result const*,int *,int *) ;

__attribute__((used)) static bool ip6_redirect_nh_match(const struct fib6_result *res,
      struct flowi6 *fl6,
      const struct in6_addr *gw,
      struct rt6_info **ret)
{
 const struct fib6_nh *nh = res->nh;

 if (nh->fib_nh_flags & RTNH_F_DEAD || !nh->fib_nh_gw_family ||
     fl6->flowi6_oif != nh->fib_nh_dev->ifindex)
  return 0;






 if (!ipv6_addr_equal(gw, &nh->fib_nh_gw6)) {
  struct rt6_info *rt_cache;

  rt_cache = rt6_find_cached_rt(res, &fl6->daddr, &fl6->saddr);
  if (rt_cache &&
      ipv6_addr_equal(gw, &rt_cache->rt6i_gateway)) {
   *ret = rt_cache;
   return 1;
  }
  return 0;
 }
 return 1;
}
