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
typedef  int /*<<< orphan*/  u8 ;
struct nh_group {TYPE_1__* nh_entries; } ;
struct nexthop {int /*<<< orphan*/  nh_grp; scalar_t__ is_group; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {struct nexthop* nh; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  RT_SCOPE_HOST ; 
 int FUNC1 (struct nexthop*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct nh_group* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct nexthop *nh, u8 scope,
		      struct netlink_ext_ack *extack)
{
	int err = 0;

	if (nh->is_group) {
		struct nh_group *nhg;

		if (scope == RT_SCOPE_HOST) {
			FUNC0(extack, "Route with host scope can not have multiple nexthops");
			err = -EINVAL;
			goto out;
		}

		nhg = FUNC2(nh->nh_grp);
		/* all nexthops in a group have the same scope */
		err = FUNC1(nhg->nh_entries[0].nh, scope, extack);
	} else {
		err = FUNC1(nh, scope, extack);
	}
out:
	return err;
}