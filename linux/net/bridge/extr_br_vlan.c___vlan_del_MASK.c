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
struct net_bridge_vlan_group {int /*<<< orphan*/  vlan_hash; int /*<<< orphan*/  num_vlans; } ;
struct net_bridge_vlan {int /*<<< orphan*/  rcu; int /*<<< orphan*/  vid; int /*<<< orphan*/  vnode; int /*<<< orphan*/  flags; TYPE_1__* br; struct net_bridge_vlan* brvlan; struct net_bridge_port* port; } ;
struct net_bridge_port {int /*<<< orphan*/  br; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRIDGE_VLAN_INFO_BRENTRY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge_vlan*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_vlan_group*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_bridge_vlan*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_bridge_vlan_group* FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (struct net_bridge_vlan*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_bridge_vlan*) ; 
 int /*<<< orphan*/  br_vlan_rht_params ; 
 scalar_t__ FUNC7 (struct net_bridge_vlan*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct net_bridge_vlan_group* FUNC9 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  nbp_vlan_rcu_free ; 
 int /*<<< orphan*/  FUNC10 (struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_bridge_vlan_group*,struct net_bridge_vlan*) ; 

__attribute__((used)) static int FUNC13(struct net_bridge_vlan *v)
{
	struct net_bridge_vlan *masterv = v;
	struct net_bridge_vlan_group *vg;
	struct net_bridge_port *p = NULL;
	int err = 0;

	if (FUNC5(v)) {
		vg = FUNC4(v->br);
	} else {
		p = v->port;
		vg = FUNC9(v->port);
		masterv = v->brvlan;
	}

	FUNC1(vg, v->vid);
	if (p) {
		err = FUNC2(p->dev, p->br, v);
		if (err)
			goto out;
	} else {
		err = FUNC3(v->br->dev, v->vid);
		if (err && err != -EOPNOTSUPP)
			goto out;
		err = 0;
	}

	if (FUNC7(v)) {
		v->flags &= ~BRIDGE_VLAN_INFO_BRENTRY;
		vg->num_vlans--;
	}

	if (masterv != v) {
		FUNC12(vg, v);
		FUNC11(&vg->vlan_hash, &v->vnode,
				       br_vlan_rht_params);
		FUNC0(v);
		FUNC10(p, v->vid);
		FUNC8(&v->rcu, nbp_vlan_rcu_free);
	}

	FUNC6(masterv);
out:
	return err;
}