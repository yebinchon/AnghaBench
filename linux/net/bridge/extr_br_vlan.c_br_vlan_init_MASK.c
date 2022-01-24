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
struct net_bridge {int default_pvid; int /*<<< orphan*/  vlgrp; int /*<<< orphan*/  vlan_proto; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  br_vlan_rht_params ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge_vlan_group*) ; 
 struct net_bridge_vlan_group* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_bridge_vlan_group*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct net_bridge_vlan_group*) ; 

int FUNC8(struct net_bridge *br)
{
	struct net_bridge_vlan_group *vg;
	int ret = -ENOMEM;

	vg = FUNC3(sizeof(*vg), GFP_KERNEL);
	if (!vg)
		goto out;
	ret = FUNC6(&vg->vlan_hash, &br_vlan_rht_params);
	if (ret)
		goto err_rhtbl;
	ret = FUNC7(vg);
	if (ret)
		goto err_tunnel_init;
	FUNC0(&vg->vlan_list);
	br->vlan_proto = FUNC1(ETH_P_8021Q);
	br->default_pvid = 1;
	FUNC4(br->vlgrp, vg);

out:
	return ret;

err_tunnel_init:
	FUNC5(&vg->vlan_hash);
err_rhtbl:
	FUNC2(vg);

	goto out;
}