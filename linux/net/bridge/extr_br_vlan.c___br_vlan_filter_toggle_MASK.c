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
struct TYPE_2__ {unsigned long vlan_filtering; } ;
struct switchdev_attr {TYPE_1__ u; int /*<<< orphan*/  flags; int /*<<< orphan*/  id; int /*<<< orphan*/  orig_dev; } ;
struct net_bridge {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_VLAN_ENABLED ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING ; 
 int /*<<< orphan*/  SWITCHDEV_F_SKIP_EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*) ; 
 int FUNC1 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct switchdev_attr*) ; 

int FUNC6(struct net_bridge *br, unsigned long val)
{
	struct switchdev_attr attr = {
		.orig_dev = br->dev,
		.id = SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING,
		.flags = SWITCHDEV_F_SKIP_EOPNOTSUPP,
		.u.vlan_filtering = val,
	};
	int err;

	if (FUNC1(br, BROPT_VLAN_ENABLED) == !!val)
		return 0;

	err = FUNC5(br->dev, &attr);
	if (err && err != -EOPNOTSUPP)
		return err;

	FUNC2(br, BROPT_VLAN_ENABLED, !!val);
	FUNC0(br);
	FUNC4(br);
	FUNC3(br);

	return 0;
}