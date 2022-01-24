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
struct nl_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ nhc_dev; } ;
struct nh_info {int /*<<< orphan*/  dev_hash; TYPE_1__ fib_nhc; } ;
struct nexthop {int /*<<< orphan*/  nh_info; scalar_t__ is_group; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,struct nexthop*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct nexthop*,struct nl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct nexthop*,struct nl_info*) ; 
 struct nh_info* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net *net, struct nexthop *nh,
			     struct nl_info *nlinfo)
{
	FUNC0(net, nh);

	if (nh->is_group) {
		FUNC3(nh, nlinfo);
	} else {
		struct nh_info *nhi;

		nhi = FUNC4(nh->nh_info);
		if (nhi->fib_nhc.nhc_dev)
			FUNC1(&nhi->dev_hash);

		FUNC2(net, nh, nlinfo);
	}
}