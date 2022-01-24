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
typedef  int /*<<< orphan*/  u16 ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_vlan {int dummy; } ;
struct net_bridge {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOENT ; 
 int FUNC1 (struct net_bridge_vlan*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_bridge_vlan* FUNC4 (struct net_bridge_vlan_group*,int /*<<< orphan*/ ) ; 
 struct net_bridge_vlan_group* FUNC5 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_bridge_vlan*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_bridge_vlan_group*,struct net_bridge_vlan*) ; 

int FUNC8(struct net_bridge *br, u16 vid)
{
	struct net_bridge_vlan_group *vg;
	struct net_bridge_vlan *v;

	FUNC0();

	vg = FUNC5(br);
	v = FUNC4(vg, vid);
	if (!v || !FUNC6(v))
		return -ENOENT;

	FUNC3(br, NULL, br->dev->dev_addr, vid);
	FUNC2(br, NULL, vid, 0);

	FUNC7(vg, v);

	return FUNC1(v);
}