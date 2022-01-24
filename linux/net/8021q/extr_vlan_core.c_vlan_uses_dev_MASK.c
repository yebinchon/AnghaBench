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
struct TYPE_2__ {scalar_t__ nr_vlan_devs; } ;
struct vlan_info {TYPE_1__ grp; } ;
struct net_device {int /*<<< orphan*/  vlan_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct vlan_info* FUNC1 (int /*<<< orphan*/ ) ; 

bool FUNC2(const struct net_device *dev)
{
	struct vlan_info *vlan_info;

	FUNC0();

	vlan_info = FUNC1(dev->vlan_info);
	if (!vlan_info)
		return false;
	return vlan_info->grp.nr_vlan_devs ? true : false;
}