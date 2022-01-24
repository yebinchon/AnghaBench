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
struct vlan_vid_info {int /*<<< orphan*/  refcount; } ;
struct vlan_info {int dummy; } ;
struct net_device {int /*<<< orphan*/  vlan_info; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int FUNC1 (struct vlan_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vlan_vid_info**) ; 
 int /*<<< orphan*/  FUNC2 (struct vlan_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct vlan_info*) ; 
 struct vlan_info* FUNC4 (int /*<<< orphan*/ ) ; 
 struct vlan_info* FUNC5 (struct net_device*) ; 
 struct vlan_vid_info* FUNC6 (struct vlan_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct net_device *dev, __be16 proto, u16 vid)
{
	struct vlan_info *vlan_info;
	struct vlan_vid_info *vid_info;
	bool vlan_info_created = false;
	int err;

	FUNC0();

	vlan_info = FUNC4(dev->vlan_info);
	if (!vlan_info) {
		vlan_info = FUNC5(dev);
		if (!vlan_info)
			return -ENOMEM;
		vlan_info_created = true;
	}
	vid_info = FUNC6(vlan_info, proto, vid);
	if (!vid_info) {
		err = FUNC1(vlan_info, proto, vid, &vid_info);
		if (err)
			goto out_free_vlan_info;
	}
	vid_info->refcount++;

	if (vlan_info_created)
		FUNC3(dev->vlan_info, vlan_info);

	return 0;

out_free_vlan_info:
	if (vlan_info_created)
		FUNC2(vlan_info);
	return err;
}