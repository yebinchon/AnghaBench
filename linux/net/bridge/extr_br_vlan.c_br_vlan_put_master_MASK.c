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
struct net_bridge_vlan_group {int /*<<< orphan*/  vlan_hash; } ;
struct net_bridge_vlan {int /*<<< orphan*/  rcu; int /*<<< orphan*/  vnode; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  br; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge_vlan*) ; 
 int /*<<< orphan*/  br_master_vlan_rcu_free ; 
 struct net_bridge_vlan_group* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge_vlan*) ; 
 int /*<<< orphan*/  br_vlan_rht_params ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_bridge_vlan *masterv)
{
	struct net_bridge_vlan_group *vg;

	if (!FUNC2(masterv))
		return;

	vg = FUNC1(masterv->br);
	if (FUNC4(&masterv->refcnt)) {
		FUNC5(&vg->vlan_hash,
				       &masterv->vnode, br_vlan_rht_params);
		FUNC0(masterv);
		FUNC3(&masterv->rcu, br_master_vlan_rcu_free);
	}
}