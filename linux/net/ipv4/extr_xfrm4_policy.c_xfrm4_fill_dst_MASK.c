#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int rt_flags; scalar_t__ rt_gw_family; int /*<<< orphan*/  rt_uncached; int /*<<< orphan*/  rt_mtu_locked; int /*<<< orphan*/  rt_pmtu; int /*<<< orphan*/  rt_gw6; int /*<<< orphan*/  rt_gw4; int /*<<< orphan*/  rt_uses_gateway; int /*<<< orphan*/  rt_type; int /*<<< orphan*/  rt_is_input; int /*<<< orphan*/  rt_iif; } ;
struct TYPE_6__ {struct net_device* dev; } ;
struct TYPE_7__ {TYPE_4__ rt; TYPE_2__ dst; } ;
struct xfrm_dst {TYPE_3__ u; scalar_t__ route; } ;
struct rtable {int rt_flags; scalar_t__ rt_gw_family; int /*<<< orphan*/  rt_mtu_locked; int /*<<< orphan*/  rt_pmtu; int /*<<< orphan*/  rt_gw6; int /*<<< orphan*/  rt_gw4; int /*<<< orphan*/  rt_uses_gateway; int /*<<< orphan*/  rt_type; int /*<<< orphan*/  rt_is_input; } ;
struct net_device {int dummy; } ;
struct flowi4 {int /*<<< orphan*/  flowi4_iif; } ;
struct TYPE_5__ {struct flowi4 ip4; } ;
struct flowi {TYPE_1__ u; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int RTCF_BROADCAST ; 
 int RTCF_LOCAL ; 
 int RTCF_MULTICAST ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC3(struct xfrm_dst *xdst, struct net_device *dev,
			  const struct flowi *fl)
{
	struct rtable *rt = (struct rtable *)xdst->route;
	const struct flowi4 *fl4 = &fl->u.ip4;

	xdst->u.rt.rt_iif = fl4->flowi4_iif;

	xdst->u.dst.dev = dev;
	FUNC1(dev);

	/* Sheit... I remember I did this right. Apparently,
	 * it was magically lost, so this code needs audit */
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
	FUNC0(&xdst->u.rt.rt_uncached);
	FUNC2(&xdst->u.rt);

	return 0;
}