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
struct sk_buff {int dummy; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge {int dummy; } ;
struct TYPE_2__ {int vlan_filtered; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_VLAN_ENABLED ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct net_bridge const*,struct net_bridge_vlan_group*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge const*,int /*<<< orphan*/ ) ; 

bool FUNC3(const struct net_bridge *br,
			struct net_bridge_vlan_group *vg, struct sk_buff *skb,
			u16 *vid)
{
	/* If VLAN filtering is disabled on the bridge, all packets are
	 * permitted.
	 */
	if (!FUNC2(br, BROPT_VLAN_ENABLED)) {
		FUNC0(skb)->vlan_filtered = false;
		return true;
	}

	return FUNC1(br, vg, skb, vid);
}