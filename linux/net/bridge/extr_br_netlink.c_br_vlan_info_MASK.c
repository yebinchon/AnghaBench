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
struct netlink_ext_ack {int dummy; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int dummy; } ;
struct bridge_vlan_info {int flags; int /*<<< orphan*/  vid; } ;

/* Variables and functions */
 int BRIDGE_VLAN_INFO_BRENTRY ; 
 int BRIDGE_VLAN_INFO_MASTER ; 
#define  RTM_DELLINK 129 
#define  RTM_SETLINK 128 
 int FUNC0 (struct net_bridge*,int /*<<< orphan*/ ,int,int*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_bridge_port*,int /*<<< orphan*/ ,int,int*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_bridge *br, struct net_bridge_port *p,
			int cmd, struct bridge_vlan_info *vinfo, bool *changed,
			struct netlink_ext_ack *extack)
{
	bool curr_change;
	int err = 0;

	switch (cmd) {
	case RTM_SETLINK:
		if (p) {
			/* if the MASTER flag is set this will act on the global
			 * per-VLAN entry as well
			 */
			err = FUNC2(p, vinfo->vid, vinfo->flags,
					   &curr_change, extack);
		} else {
			vinfo->flags |= BRIDGE_VLAN_INFO_BRENTRY;
			err = FUNC0(br, vinfo->vid, vinfo->flags,
					  &curr_change, extack);
		}
		if (curr_change)
			*changed = true;
		break;

	case RTM_DELLINK:
		if (p) {
			if (!FUNC3(p, vinfo->vid))
				*changed = true;

			if ((vinfo->flags & BRIDGE_VLAN_INFO_MASTER) &&
			    !FUNC1(p->br, vinfo->vid))
				*changed = true;
		} else if (!FUNC1(br, vinfo->vid)) {
			*changed = true;
		}
		break;
	}

	return err;
}