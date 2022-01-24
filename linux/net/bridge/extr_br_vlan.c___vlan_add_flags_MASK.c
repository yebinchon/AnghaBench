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
typedef  int u16 ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_vlan {int flags; int /*<<< orphan*/  vid; int /*<<< orphan*/  port; int /*<<< orphan*/  br; } ;

/* Variables and functions */
 int BRIDGE_VLAN_INFO_PVID ; 
 int BRIDGE_VLAN_INFO_UNTAGGED ; 
 int FUNC0 (struct net_bridge_vlan_group*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_bridge_vlan_group*,int /*<<< orphan*/ ) ; 
 struct net_bridge_vlan_group* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct net_bridge_vlan*) ; 
 struct net_bridge_vlan_group* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct net_bridge_vlan *v, u16 flags)
{
	struct net_bridge_vlan_group *vg;
	u16 old_flags = v->flags;
	bool ret;

	if (FUNC3(v))
		vg = FUNC2(v->br);
	else
		vg = FUNC4(v->port);

	if (flags & BRIDGE_VLAN_INFO_PVID)
		ret = FUNC0(vg, v->vid);
	else
		ret = FUNC1(vg, v->vid);

	if (flags & BRIDGE_VLAN_INFO_UNTAGGED)
		v->flags |= BRIDGE_VLAN_INFO_UNTAGGED;
	else
		v->flags &= ~BRIDGE_VLAN_INFO_UNTAGGED;

	return ret || !!(old_flags ^ v->flags);
}