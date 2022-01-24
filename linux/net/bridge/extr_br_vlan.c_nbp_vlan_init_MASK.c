#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  vlan_filtering; } ;
struct switchdev_attr {TYPE_1__ u; int /*<<< orphan*/  flags; int /*<<< orphan*/  id; int /*<<< orphan*/  orig_dev; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_bridge_vlan_group {int /*<<< orphan*/  vlan_hash; int /*<<< orphan*/  vlan_list; } ;
struct net_bridge_port {int /*<<< orphan*/  vlgrp; TYPE_2__* br; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ default_pvid; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BRIDGE_VLAN_INFO_PVID ; 
 int BRIDGE_VLAN_INFO_UNTAGGED ; 
 int /*<<< orphan*/  BROPT_VLAN_ENABLED ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING ; 
 int /*<<< orphan*/  SWITCHDEV_F_SKIP_EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  br_vlan_rht_params ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge_vlan_group*) ; 
 struct net_bridge_vlan_group* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_bridge_port*,scalar_t__,int,int*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct net_bridge_vlan_group*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct switchdev_attr*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct net_bridge_vlan_group*) ; 
 int FUNC12 (struct net_bridge_vlan_group*) ; 

int FUNC13(struct net_bridge_port *p, struct netlink_ext_ack *extack)
{
	struct switchdev_attr attr = {
		.orig_dev = p->br->dev,
		.id = SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING,
		.flags = SWITCHDEV_F_SKIP_EOPNOTSUPP,
		.u.vlan_filtering = FUNC2(p->br, BROPT_VLAN_ENABLED),
	};
	struct net_bridge_vlan_group *vg;
	int ret = -ENOMEM;

	vg = FUNC4(sizeof(struct net_bridge_vlan_group), GFP_KERNEL);
	if (!vg)
		goto out;

	ret = FUNC9(p->dev, &attr);
	if (ret && ret != -EOPNOTSUPP)
		goto err_vlan_enabled;

	ret = FUNC8(&vg->vlan_hash, &br_vlan_rht_params);
	if (ret)
		goto err_rhtbl;
	ret = FUNC12(vg);
	if (ret)
		goto err_tunnel_init;
	FUNC0(&vg->vlan_list);
	FUNC6(p->vlgrp, vg);
	if (p->br->default_pvid) {
		bool changed;

		ret = FUNC5(p, p->br->default_pvid,
				   BRIDGE_VLAN_INFO_PVID |
				   BRIDGE_VLAN_INFO_UNTAGGED,
				   &changed, extack);
		if (ret)
			goto err_vlan_add;
	}
out:
	return ret;

err_vlan_add:
	FUNC1(p->vlgrp, NULL);
	FUNC10();
	FUNC11(vg);
err_tunnel_init:
	FUNC7(&vg->vlan_hash);
err_rhtbl:
err_vlan_enabled:
	FUNC3(vg);

	goto out;
}