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
struct net_bridge_vlan {struct net_bridge_port* port; int /*<<< orphan*/  vid; } ;
struct net_bridge_port {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct net_bridge_vlan*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC2 (struct net_bridge_vlan*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct net_bridge_vlan* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge_vlan*) ; 
 struct net_bridge_vlan* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_bridge_port*) ; 

int FUNC8(struct net_bridge_port *port, u16 vid, u16 flags,
		 bool *changed, struct netlink_ext_ack *extack)
{
	struct net_bridge_vlan *vlan;
	int ret;

	FUNC0();

	*changed = false;
	vlan = FUNC4(FUNC7(port), vid);
	if (vlan) {
		/* Pass the flags to the hardware bridge */
		ret = FUNC3(port->dev, vid, flags, extack);
		if (ret && ret != -EOPNOTSUPP)
			return ret;
		*changed = FUNC2(vlan, flags);

		return 0;
	}

	vlan = FUNC6(sizeof(*vlan), GFP_KERNEL);
	if (!vlan)
		return -ENOMEM;

	vlan->vid = vid;
	vlan->port = port;
	ret = FUNC1(vlan, flags, extack);
	if (ret)
		FUNC5(vlan);
	else
		*changed = true;

	return ret;
}