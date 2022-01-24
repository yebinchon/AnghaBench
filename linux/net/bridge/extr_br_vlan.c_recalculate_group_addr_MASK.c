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
struct net_bridge {scalar_t__ vlan_proto; int* group_addr; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_GROUP_ADDR_SET ; 
 int /*<<< orphan*/  BROPT_VLAN_ENABLED ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 scalar_t__ FUNC0 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_bridge *br)
{
	if (FUNC0(br, BROPT_GROUP_ADDR_SET))
		return;

	FUNC2(&br->lock);
	if (!FUNC0(br, BROPT_VLAN_ENABLED) ||
	    br->vlan_proto == FUNC1(ETH_P_8021Q)) {
		/* Bridge Group Address */
		br->group_addr[5] = 0x00;
	} else { /* vlan_enabled && ETH_P_8021AD */
		/* Provider Bridge Group Address */
		br->group_addr[5] = 0x08;
	}
	FUNC3(&br->lock);
}