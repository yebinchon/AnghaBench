
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt6_info {int dst; } ;
struct TYPE_2__ {int mtu6; } ;
struct inet6_dev {TYPE_1__ cnf; } ;


 int dst_mtu (int *) ;

__attribute__((used)) static bool rt6_mtu_change_route_allowed(struct inet6_dev *idev,
      struct rt6_info *rt, int mtu)
{
 if (dst_mtu(&rt->dst) >= mtu)
  return 1;

 if (dst_mtu(&rt->dst) == idev->cnf.mtu6)
  return 1;

 return 0;
}
