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
struct nh_group {int num_nh; TYPE_1__* nh_entries; } ;
struct nexthop {int /*<<< orphan*/  nh_grp; int /*<<< orphan*/  is_group; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct nexthop* nh_parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nh_group*) ; 
 struct nh_group* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net *net, struct nexthop *old,
			       struct nexthop *new,
			       struct netlink_ext_ack *extack)
{
	struct nh_group *oldg, *newg;
	int i;

	if (!new->is_group) {
		FUNC0(extack, "Can not replace a nexthop group with a nexthop.");
		return -EINVAL;
	}

	oldg = FUNC2(old->nh_grp);
	newg = FUNC2(new->nh_grp);

	/* update parents - used by nexthop code for cleanup */
	for (i = 0; i < newg->num_nh; i++)
		newg->nh_entries[i].nh_parent = old;

	FUNC1(old->nh_grp, newg);

	for (i = 0; i < oldg->num_nh; i++)
		oldg->nh_entries[i].nh_parent = new;

	FUNC1(new->nh_grp, oldg);

	return 0;
}