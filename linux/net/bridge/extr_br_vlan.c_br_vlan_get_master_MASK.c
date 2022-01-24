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
typedef  int /*<<< orphan*/  u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_vlan {int /*<<< orphan*/  refcnt; } ;
struct net_bridge {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct net_bridge*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,struct netlink_ext_ack*) ; 
 struct net_bridge_vlan* FUNC2 (struct net_bridge_vlan_group*,int /*<<< orphan*/ ) ; 
 struct net_bridge_vlan_group* FUNC3 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct net_bridge_vlan *
FUNC6(struct net_bridge *br, u16 vid,
		   struct netlink_ext_ack *extack)
{
	struct net_bridge_vlan_group *vg;
	struct net_bridge_vlan *masterv;

	vg = FUNC3(br);
	masterv = FUNC2(vg, vid);
	if (!masterv) {
		bool changed;

		/* missing global ctx, create it now */
		if (FUNC1(br, vid, 0, &changed, extack))
			return NULL;
		masterv = FUNC2(vg, vid);
		if (FUNC0(!masterv))
			return NULL;
		FUNC5(&masterv->refcnt, 1);
		return masterv;
	}
	FUNC4(&masterv->refcnt);

	return masterv;
}