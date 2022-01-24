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
typedef  int u32 ;
struct net_bridge_vlan_group {int num_vlans; } ;

/* Variables and functions */
 int RTEXT_FILTER_BRVLAN ; 
 int FUNC0 (struct net_bridge_vlan_group*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct net_bridge_vlan_group *vg,
				 u32 filter_mask)
{
	int num_vlans;

	if (!vg)
		return 0;

	if (filter_mask & RTEXT_FILTER_BRVLAN)
		return vg->num_vlans;

	FUNC1();
	num_vlans = FUNC0(vg, filter_mask);
	FUNC2();

	return num_vlans;
}