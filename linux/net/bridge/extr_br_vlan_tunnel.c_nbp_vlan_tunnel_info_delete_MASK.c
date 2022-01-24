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
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_vlan {int dummy; } ;
struct net_bridge_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOENT ; 
 struct net_bridge_vlan* FUNC1 (struct net_bridge_vlan_group*,int /*<<< orphan*/ ) ; 
 struct net_bridge_vlan_group* FUNC2 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge_vlan_group*,struct net_bridge_vlan*) ; 

int FUNC4(struct net_bridge_port *port, u16 vid)
{
	struct net_bridge_vlan_group *vg;
	struct net_bridge_vlan *v;

	FUNC0();

	vg = FUNC2(port);
	v = FUNC1(vg, vid);
	if (!v)
		return -ENOENT;

	FUNC3(vg, v);

	return 0;
}