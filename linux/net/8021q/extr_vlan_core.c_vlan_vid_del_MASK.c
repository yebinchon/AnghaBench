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
typedef  int /*<<< orphan*/  u16 ;
struct vlan_vid_info {scalar_t__ refcount; } ;
struct vlan_info {scalar_t__ nr_vids; int /*<<< orphan*/  rcu; } ;
struct net_device {int /*<<< orphan*/  vlan_info; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vlan_info*,struct vlan_vid_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vlan_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlan_info_rcu_free ; 
 struct vlan_vid_info* FUNC5 (struct vlan_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct net_device *dev, __be16 proto, u16 vid)
{
	struct vlan_info *vlan_info;
	struct vlan_vid_info *vid_info;

	FUNC0();

	vlan_info = FUNC4(dev->vlan_info);
	if (!vlan_info)
		return;

	vid_info = FUNC5(vlan_info, proto, vid);
	if (!vid_info)
		return;
	vid_info->refcount--;
	if (vid_info->refcount == 0) {
		FUNC2(vlan_info, vid_info);
		if (vlan_info->nr_vids == 0) {
			FUNC1(dev->vlan_info, NULL);
			FUNC3(&vlan_info->rcu, vlan_info_rcu_free);
		}
	}
}