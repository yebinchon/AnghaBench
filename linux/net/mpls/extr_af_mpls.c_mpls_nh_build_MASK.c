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
typedef  int /*<<< orphan*/  u8 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct mpls_route {int dummy; } ;
struct mpls_nh {int /*<<< orphan*/  nh_via_table; int /*<<< orphan*/  nh_via_alen; int /*<<< orphan*/  nh_label; int /*<<< orphan*/  nh_labels; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MPLS_NEIGH_TABLE_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (struct mpls_route*,struct mpls_nh*) ; 
 int FUNC1 (struct net*,struct mpls_route*,struct mpls_nh*,int) ; 
 int FUNC2 (struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC3 (struct nlattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC4(struct net *net, struct mpls_route *rt,
			 struct mpls_nh *nh, int oif, struct nlattr *via,
			 struct nlattr *newdst, u8 max_labels,
			 struct netlink_ext_ack *extack)
{
	int err = -ENOMEM;

	if (!nh)
		goto errout;

	if (newdst) {
		err = FUNC2(newdst, max_labels, &nh->nh_labels,
				     nh->nh_label, extack);
		if (err)
			goto errout;
	}

	if (via) {
		err = FUNC3(via, &nh->nh_via_alen, &nh->nh_via_table,
				  FUNC0(rt, nh), extack);
		if (err)
			goto errout;
	} else {
		nh->nh_via_table = MPLS_NEIGH_TABLE_UNSPEC;
	}

	err = FUNC1(net, rt, nh, oif);
	if (err)
		goto errout;

	return 0;

errout:
	return err;
}