#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nh_info {struct nexthop* nh_parent; } ;
struct nexthop {int /*<<< orphan*/  nh_info; int /*<<< orphan*/  nh_flags; int /*<<< orphan*/  protocol; scalar_t__ is_group; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nh_info*) ; 
 struct nh_info* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net *net, struct nexthop *old,
				  struct nexthop *new,
				  struct netlink_ext_ack *extack)
{
	struct nh_info *oldi, *newi;

	if (new->is_group) {
		FUNC0(extack, "Can not replace a nexthop with a nexthop group.");
		return -EINVAL;
	}

	oldi = FUNC2(old->nh_info);
	newi = FUNC2(new->nh_info);

	newi->nh_parent = old;
	oldi->nh_parent = new;

	old->protocol = new->protocol;
	old->nh_flags = new->nh_flags;

	FUNC1(old->nh_info, newi);
	FUNC1(new->nh_info, oldi);

	return 0;
}