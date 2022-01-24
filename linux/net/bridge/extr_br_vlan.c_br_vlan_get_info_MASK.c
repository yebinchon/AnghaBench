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
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_vlan {int /*<<< orphan*/  flags; } ;
struct net_bridge_port {int dummy; } ;
struct bridge_vlan_info {int /*<<< orphan*/  flags; scalar_t__ vid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  BRIDGE_VLAN_INFO_PVID ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (struct net_bridge_vlan_group*) ; 
 struct net_bridge_port* FUNC2 (struct net_device const*) ; 
 struct net_bridge_vlan* FUNC3 (struct net_bridge_vlan_group*,scalar_t__) ; 
 struct net_bridge_vlan_group* FUNC4 (int /*<<< orphan*/ ) ; 
 struct net_bridge_vlan_group* FUNC5 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device const*) ; 
 scalar_t__ FUNC7 (struct net_device const*) ; 

int FUNC8(const struct net_device *dev, u16 vid,
		     struct bridge_vlan_info *p_vinfo)
{
	struct net_bridge_vlan_group *vg;
	struct net_bridge_vlan *v;
	struct net_bridge_port *p;

	FUNC0();
	p = FUNC2(dev);
	if (p)
		vg = FUNC5(p);
	else if (FUNC7(dev))
		vg = FUNC4(FUNC6(dev));
	else
		return -EINVAL;

	v = FUNC3(vg, vid);
	if (!v)
		return -ENOENT;

	p_vinfo->vid = vid;
	p_vinfo->flags = v->flags;
	if (vid == FUNC1(vg))
		p_vinfo->flags |= BRIDGE_VLAN_INFO_PVID;
	return 0;
}