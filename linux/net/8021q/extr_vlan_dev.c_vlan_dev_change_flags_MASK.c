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
typedef  int u32 ;
struct vlan_dev_priv {int flags; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int VLAN_FLAG_BRIDGE_BINDING ; 
 int VLAN_FLAG_GVRP ; 
 int VLAN_FLAG_LOOSE_BINDING ; 
 int VLAN_FLAG_MVRP ; 
 int VLAN_FLAG_REORDER_HDR ; 
 scalar_t__ FUNC0 (struct net_device const*) ; 
 struct vlan_dev_priv* FUNC1 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device const*) ; 

int FUNC6(const struct net_device *dev, u32 flags, u32 mask)
{
	struct vlan_dev_priv *vlan = FUNC1(dev);
	u32 old_flags = vlan->flags;

	if (mask & ~(VLAN_FLAG_REORDER_HDR | VLAN_FLAG_GVRP |
		     VLAN_FLAG_LOOSE_BINDING | VLAN_FLAG_MVRP |
		     VLAN_FLAG_BRIDGE_BINDING))
		return -EINVAL;

	vlan->flags = (old_flags & ~mask) | (flags & mask);

	if (FUNC0(dev) && (vlan->flags ^ old_flags) & VLAN_FLAG_GVRP) {
		if (vlan->flags & VLAN_FLAG_GVRP)
			FUNC2(dev);
		else
			FUNC3(dev);
	}

	if (FUNC0(dev) && (vlan->flags ^ old_flags) & VLAN_FLAG_MVRP) {
		if (vlan->flags & VLAN_FLAG_MVRP)
			FUNC4(dev);
		else
			FUNC5(dev);
	}
	return 0;
}