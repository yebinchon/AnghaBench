#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct dst_entry {int /*<<< orphan*/  xfrm; } ;
struct TYPE_2__ {struct dst_entry dst; } ;
struct xfrm_dst {scalar_t__ route_mtu_cached; int /*<<< orphan*/  route; scalar_t__ child_mtu_cached; TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTAX_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct dst_entry*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct xfrm_dst **bundle, int nr)
{
	while (nr--) {
		struct xfrm_dst *xdst = bundle[nr];
		u32 pmtu, route_mtu_cached;
		struct dst_entry *dst;

		dst = &xdst->u.dst;
		pmtu = FUNC1(FUNC2(dst));
		xdst->child_mtu_cached = pmtu;

		pmtu = FUNC3(dst->xfrm, pmtu);

		route_mtu_cached = FUNC1(xdst->route);
		xdst->route_mtu_cached = route_mtu_cached;

		if (pmtu > route_mtu_cached)
			pmtu = route_mtu_cached;

		FUNC0(dst, RTAX_MTU, pmtu);
	}
}