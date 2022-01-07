
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int rt_flags; scalar_t__ rt_gw_family; int rt_uncached; int rt_mtu_locked; int rt_pmtu; int rt_gw6; int rt_gw4; int rt_uses_gateway; int rt_type; int rt_is_input; int rt_iif; } ;
struct TYPE_6__ {struct net_device* dev; } ;
struct TYPE_7__ {TYPE_4__ rt; TYPE_2__ dst; } ;
struct xfrm_dst {TYPE_3__ u; scalar_t__ route; } ;
struct rtable {int rt_flags; scalar_t__ rt_gw_family; int rt_mtu_locked; int rt_pmtu; int rt_gw6; int rt_gw4; int rt_uses_gateway; int rt_type; int rt_is_input; } ;
struct net_device {int dummy; } ;
struct flowi4 {int flowi4_iif; } ;
struct TYPE_5__ {struct flowi4 ip4; } ;
struct flowi {TYPE_1__ u; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int INIT_LIST_HEAD (int *) ;
 int RTCF_BROADCAST ;
 int RTCF_LOCAL ;
 int RTCF_MULTICAST ;
 int dev_hold (struct net_device*) ;
 int rt_add_uncached_list (TYPE_4__*) ;

__attribute__((used)) static int xfrm4_fill_dst(struct xfrm_dst *xdst, struct net_device *dev,
     const struct flowi *fl)
{
 struct rtable *rt = (struct rtable *)xdst->route;
 const struct flowi4 *fl4 = &fl->u.ip4;

 xdst->u.rt.rt_iif = fl4->flowi4_iif;

 xdst->u.dst.dev = dev;
 dev_hold(dev);



 xdst->u.rt.rt_is_input = rt->rt_is_input;
 xdst->u.rt.rt_flags = rt->rt_flags & (RTCF_BROADCAST | RTCF_MULTICAST |
           RTCF_LOCAL);
 xdst->u.rt.rt_type = rt->rt_type;
 xdst->u.rt.rt_uses_gateway = rt->rt_uses_gateway;
 xdst->u.rt.rt_gw_family = rt->rt_gw_family;
 if (rt->rt_gw_family == AF_INET)
  xdst->u.rt.rt_gw4 = rt->rt_gw4;
 else if (rt->rt_gw_family == AF_INET6)
  xdst->u.rt.rt_gw6 = rt->rt_gw6;
 xdst->u.rt.rt_pmtu = rt->rt_pmtu;
 xdst->u.rt.rt_mtu_locked = rt->rt_mtu_locked;
 INIT_LIST_HEAD(&xdst->u.rt.rt_uncached);
 rt_add_uncached_list(&xdst->u.rt);

 return 0;
}
