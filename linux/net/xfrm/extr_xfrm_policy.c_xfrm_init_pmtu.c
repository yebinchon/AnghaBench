
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct dst_entry {int xfrm; } ;
struct TYPE_2__ {struct dst_entry dst; } ;
struct xfrm_dst {scalar_t__ route_mtu_cached; int route; scalar_t__ child_mtu_cached; TYPE_1__ u; } ;


 int RTAX_MTU ;
 int dst_metric_set (struct dst_entry*,int ,scalar_t__) ;
 scalar_t__ dst_mtu (int ) ;
 int xfrm_dst_child (struct dst_entry*) ;
 scalar_t__ xfrm_state_mtu (int ,scalar_t__) ;

__attribute__((used)) static void xfrm_init_pmtu(struct xfrm_dst **bundle, int nr)
{
 while (nr--) {
  struct xfrm_dst *xdst = bundle[nr];
  u32 pmtu, route_mtu_cached;
  struct dst_entry *dst;

  dst = &xdst->u.dst;
  pmtu = dst_mtu(xfrm_dst_child(dst));
  xdst->child_mtu_cached = pmtu;

  pmtu = xfrm_state_mtu(dst->xfrm, pmtu);

  route_mtu_cached = dst_mtu(xdst->route);
  xdst->route_mtu_cached = route_mtu_cached;

  if (pmtu > route_mtu_cached)
   pmtu = route_mtu_cached;

  dst_metric_set(dst, RTAX_MTU, pmtu);
 }
}
