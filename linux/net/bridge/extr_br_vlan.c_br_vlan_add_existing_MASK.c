#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_bridge_vlan_group {int /*<<< orphan*/  num_vlans; } ;
struct net_bridge_vlan {int flags; int /*<<< orphan*/  vid; int /*<<< orphan*/  refcnt; } ;
struct net_bridge {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int BRIDGE_VLAN_INFO_BRENTRY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct net_bridge_vlan*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,char*) ; 
 int FUNC2 (struct net_bridge*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge_vlan*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_bridge *br,
				struct net_bridge_vlan_group *vg,
				struct net_bridge_vlan *vlan,
				u16 flags, bool *changed,
				struct netlink_ext_ack *extack)
{
	int err;

	err = FUNC3(br->dev, vlan->vid, flags, extack);
	if (err && err != -EOPNOTSUPP)
		return err;

	if (!FUNC5(vlan)) {
		/* Trying to change flags of non-existent bridge vlan */
		if (!(flags & BRIDGE_VLAN_INFO_BRENTRY)) {
			err = -EINVAL;
			goto err_flags;
		}
		/* It was only kept for port vlans, now make it real */
		err = FUNC2(br, NULL, br->dev->dev_addr,
				    vlan->vid);
		if (err) {
			FUNC1(br, "failed to insert local address into bridge forwarding table\n");
			goto err_fdb_insert;
		}

		FUNC6(&vlan->refcnt);
		vlan->flags |= BRIDGE_VLAN_INFO_BRENTRY;
		vg->num_vlans++;
		*changed = true;
	}

	if (FUNC0(vlan, flags))
		*changed = true;

	return 0;

err_fdb_insert:
err_flags:
	FUNC4(br->dev, vlan->vid);
	return err;
}