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
struct nexthop {int /*<<< orphan*/  rb_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  rb_root; } ;
struct net {TYPE_1__ nexthop; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTM_DELNEXTHOP ; 
 int /*<<< orphan*/  FUNC0 (struct net*,struct nexthop*,struct nl_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nexthop*,struct nl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct nexthop*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net *net, struct nexthop *nh,
			   struct nl_info *nlinfo)
{
	/* remove from the tree */
	FUNC4(&nh->rb_node, &net->nexthop.rb_root);

	if (nlinfo)
		FUNC1(RTM_DELNEXTHOP, nh, nlinfo);

	FUNC0(net, nh, nlinfo);
	FUNC3(net);

	FUNC2(nh);
}