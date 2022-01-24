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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net_bridge_port {unsigned long flags; int group_fwd_mask; int /*<<< orphan*/  dev; int /*<<< orphan*/  br; } ;

/* Variables and functions */
 int BR_BCAST_FLOOD ; 
 int BR_BPDU_GUARD ; 
 int BR_FLOOD ; 
 int BR_GROUPFWD_MACPAUSE ; 
 int BR_HAIRPIN_MODE ; 
 int BR_ISOLATED ; 
 int BR_LEARNING ; 
 int BR_MCAST_FLOOD ; 
 int BR_MULTICAST_FAST_LEAVE ; 
 int BR_MULTICAST_TO_UNICAST ; 
 int BR_NEIGH_SUPPRESS ; 
 int BR_PROXYARP ; 
 int BR_PROXYARP_WIFI ; 
 int BR_ROOT_BLOCK ; 
 int BR_VLAN_TUNNEL ; 
 int EINVAL ; 
 int ENOENT ; 
 size_t IFLA_BRPORT_BACKUP_PORT ; 
 int /*<<< orphan*/  IFLA_BRPORT_BCAST_FLOOD ; 
 size_t IFLA_BRPORT_COST ; 
 int /*<<< orphan*/  IFLA_BRPORT_FAST_LEAVE ; 
 size_t IFLA_BRPORT_FLUSH ; 
 size_t IFLA_BRPORT_GROUP_FWD_MASK ; 
 int /*<<< orphan*/  IFLA_BRPORT_GUARD ; 
 int /*<<< orphan*/  IFLA_BRPORT_ISOLATED ; 
 int /*<<< orphan*/  IFLA_BRPORT_LEARNING ; 
 int /*<<< orphan*/  IFLA_BRPORT_MCAST_FLOOD ; 
 int /*<<< orphan*/  IFLA_BRPORT_MCAST_TO_UCAST ; 
 int /*<<< orphan*/  IFLA_BRPORT_MODE ; 
 size_t IFLA_BRPORT_MULTICAST_ROUTER ; 
 int /*<<< orphan*/  IFLA_BRPORT_NEIGH_SUPPRESS ; 
 size_t IFLA_BRPORT_PRIORITY ; 
 int /*<<< orphan*/  IFLA_BRPORT_PROTECT ; 
 int /*<<< orphan*/  IFLA_BRPORT_PROXYARP ; 
 int /*<<< orphan*/  IFLA_BRPORT_PROXYARP_WIFI ; 
 size_t IFLA_BRPORT_STATE ; 
 int /*<<< orphan*/  IFLA_BRPORT_UNICAST_FLOOD ; 
 int /*<<< orphan*/  IFLA_BRPORT_VLAN_TUNNEL ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_bridge_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge_port*,unsigned long) ; 
 int FUNC4 (struct net_bridge_port*,struct nlattr**,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net_bridge_port*,scalar_t__) ; 
 int FUNC7 (struct net_bridge_port*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct net_bridge_port*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_bridge_port*) ; 
 int FUNC11 (struct nlattr*) ; 
 scalar_t__ FUNC12 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC13 (struct nlattr*) ; 

__attribute__((used)) static int FUNC14(struct net_bridge_port *p, struct nlattr *tb[])
{
	unsigned long old_flags = p->flags;
	bool br_vlan_tunnel_old = false;
	int err;

	err = FUNC4(p, tb, IFLA_BRPORT_MODE, BR_HAIRPIN_MODE);
	if (err)
		return err;

	err = FUNC4(p, tb, IFLA_BRPORT_GUARD, BR_BPDU_GUARD);
	if (err)
		return err;

	err = FUNC4(p, tb, IFLA_BRPORT_FAST_LEAVE, BR_MULTICAST_FAST_LEAVE);
	if (err)
		return err;

	err = FUNC4(p, tb, IFLA_BRPORT_PROTECT, BR_ROOT_BLOCK);
	if (err)
		return err;

	err = FUNC4(p, tb, IFLA_BRPORT_LEARNING, BR_LEARNING);
	if (err)
		return err;

	err = FUNC4(p, tb, IFLA_BRPORT_UNICAST_FLOOD, BR_FLOOD);
	if (err)
		return err;

	err = FUNC4(p, tb, IFLA_BRPORT_MCAST_FLOOD, BR_MCAST_FLOOD);
	if (err)
		return err;

	err = FUNC4(p, tb, IFLA_BRPORT_MCAST_TO_UCAST, BR_MULTICAST_TO_UNICAST);
	if (err)
		return err;

	err = FUNC4(p, tb, IFLA_BRPORT_BCAST_FLOOD, BR_BCAST_FLOOD);
	if (err)
		return err;

	err = FUNC4(p, tb, IFLA_BRPORT_PROXYARP, BR_PROXYARP);
	if (err)
		return err;

	err = FUNC4(p, tb, IFLA_BRPORT_PROXYARP_WIFI, BR_PROXYARP_WIFI);
	if (err)
		return err;

	br_vlan_tunnel_old = (p->flags & BR_VLAN_TUNNEL) ? true : false;
	err = FUNC4(p, tb, IFLA_BRPORT_VLAN_TUNNEL, BR_VLAN_TUNNEL);
	if (err)
		return err;

	if (br_vlan_tunnel_old && !(p->flags & BR_VLAN_TUNNEL))
		FUNC10(p);

	if (tb[IFLA_BRPORT_COST]) {
		err = FUNC6(p, FUNC12(tb[IFLA_BRPORT_COST]));
		if (err)
			return err;
	}

	if (tb[IFLA_BRPORT_PRIORITY]) {
		err = FUNC7(p, FUNC11(tb[IFLA_BRPORT_PRIORITY]));
		if (err)
			return err;
	}

	if (tb[IFLA_BRPORT_STATE]) {
		err = FUNC5(p, FUNC13(tb[IFLA_BRPORT_STATE]));
		if (err)
			return err;
	}

	if (tb[IFLA_BRPORT_FLUSH])
		FUNC1(p->br, p, 0, 0);

#ifdef CONFIG_BRIDGE_IGMP_SNOOPING
	if (tb[IFLA_BRPORT_MULTICAST_ROUTER]) {
		u8 mcast_router = nla_get_u8(tb[IFLA_BRPORT_MULTICAST_ROUTER]);

		err = br_multicast_set_port_router(p, mcast_router);
		if (err)
			return err;
	}
#endif

	if (tb[IFLA_BRPORT_GROUP_FWD_MASK]) {
		u16 fwd_mask = FUNC11(tb[IFLA_BRPORT_GROUP_FWD_MASK]);

		if (fwd_mask & BR_GROUPFWD_MACPAUSE)
			return -EINVAL;
		p->group_fwd_mask = fwd_mask;
	}

	err = FUNC4(p, tb, IFLA_BRPORT_NEIGH_SUPPRESS,
			       BR_NEIGH_SUPPRESS);
	if (err)
		return err;

	err = FUNC4(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED);
	if (err)
		return err;

	if (tb[IFLA_BRPORT_BACKUP_PORT]) {
		struct net_device *backup_dev = NULL;
		u32 backup_ifindex;

		backup_ifindex = FUNC12(tb[IFLA_BRPORT_BACKUP_PORT]);
		if (backup_ifindex) {
			backup_dev = FUNC0(FUNC8(p->dev),
							backup_ifindex);
			if (!backup_dev)
				return -ENOENT;
		}

		err = FUNC9(p, backup_dev);
		if (err)
			return err;
	}

	FUNC3(p, old_flags ^ p->flags);
	return 0;
}