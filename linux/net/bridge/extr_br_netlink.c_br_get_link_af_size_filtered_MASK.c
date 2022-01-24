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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int priv_flags; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_port {int flags; } ;
struct net_bridge {int dummy; } ;
struct bridge_vlan_info {int dummy; } ;

/* Variables and functions */
 int BR_VLAN_TUNNEL ; 
 int IFF_EBRIDGE ; 
 int FUNC0 (struct net_bridge_vlan_group*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_bridge_vlan_group*) ; 
 struct net_bridge_port* FUNC2 (struct net_device const*) ; 
 struct net_bridge_vlan_group* FUNC3 (struct net_bridge*) ; 
 struct net_bridge_vlan_group* FUNC4 (struct net_bridge_port*) ; 
 struct net_bridge* FUNC5 (struct net_device const*) ; 
 scalar_t__ FUNC6 (struct net_device const*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static size_t FUNC10(const struct net_device *dev,
					   u32 filter_mask)
{
	struct net_bridge_vlan_group *vg = NULL;
	struct net_bridge_port *p = NULL;
	struct net_bridge *br;
	int num_vlan_infos;
	size_t vinfo_sz = 0;

	FUNC8();
	if (FUNC6(dev)) {
		p = FUNC2(dev);
		vg = FUNC4(p);
	} else if (dev->priv_flags & IFF_EBRIDGE) {
		br = FUNC5(dev);
		vg = FUNC3(br);
	}
	num_vlan_infos = FUNC0(vg, filter_mask);
	FUNC9();

	if (p && (p->flags & BR_VLAN_TUNNEL))
		vinfo_sz += FUNC1(vg);

	/* Each VLAN is returned in bridge_vlan_info along with flags */
	vinfo_sz += num_vlan_infos * FUNC7(sizeof(struct bridge_vlan_info));

	return vinfo_sz;
}