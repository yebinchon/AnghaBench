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
struct net_bridge_vlan_group {int /*<<< orphan*/  vlan_hash; int /*<<< orphan*/  vlan_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_vlan_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge_vlan_group*) ; 

__attribute__((used)) static void FUNC5(struct net_bridge_vlan_group *vg)
{
	FUNC0(!FUNC2(&vg->vlan_list));
	FUNC3(&vg->vlan_hash);
	FUNC4(vg);
	FUNC1(vg);
}