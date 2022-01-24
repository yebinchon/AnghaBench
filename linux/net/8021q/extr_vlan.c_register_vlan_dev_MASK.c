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
struct vlan_group {scalar_t__ nr_vlan_devs; } ;
struct vlan_info {struct vlan_group grp; } ;
struct vlan_dev_priv {int /*<<< orphan*/  vlan_proto; int /*<<< orphan*/  vlan_id; struct net_device* real_dev; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int /*<<< orphan*/  vlan_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,struct net_device*,struct netlink_ext_ack*) ; 
 int FUNC4 (struct net_device*) ; 
 struct vlan_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct vlan_dev_priv* FUNC7 (struct net_device*) ; 
 int FUNC8 (struct vlan_group*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vlan_group*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,struct net_device*,struct vlan_dev_priv*) ; 
 int FUNC15 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC17(struct net_device *dev, struct netlink_ext_ack *extack)
{
	struct vlan_dev_priv *vlan = FUNC7(dev);
	struct net_device *real_dev = vlan->real_dev;
	u16 vlan_id = vlan->vlan_id;
	struct vlan_info *vlan_info;
	struct vlan_group *grp;
	int err;

	err = FUNC15(real_dev, vlan->vlan_proto, vlan_id);
	if (err)
		return err;

	vlan_info = FUNC5(real_dev->vlan_info);
	/* vlan_info should be there now. vlan_vid_add took care of it */
	FUNC0(!vlan_info);

	grp = &vlan_info->grp;
	if (grp->nr_vlan_devs == 0) {
		err = FUNC10(real_dev);
		if (err < 0)
			goto out_vid_del;
		err = FUNC12(real_dev);
		if (err < 0)
			goto out_uninit_gvrp;
	}

	err = FUNC8(grp, vlan->vlan_proto, vlan_id);
	if (err < 0)
		goto out_uninit_mvrp;

	err = FUNC4(dev);
	if (err < 0)
		goto out_uninit_mvrp;

	err = FUNC3(real_dev, dev, extack);
	if (err)
		goto out_unregister_netdev;

	/* Account for reference in struct vlan_dev_priv */
	FUNC1(real_dev);

	FUNC14(real_dev, dev, vlan);
	FUNC2(dev); /* _MUST_ call rfc2863_policy() */

	/* So, got the sucker initialized, now lets place
	 * it into our local structure.
	 */
	FUNC9(grp, vlan->vlan_proto, vlan_id, dev);
	grp->nr_vlan_devs++;

	return 0;

out_unregister_netdev:
	FUNC6(dev);
out_uninit_mvrp:
	if (grp->nr_vlan_devs == 0)
		FUNC13(real_dev);
out_uninit_gvrp:
	if (grp->nr_vlan_devs == 0)
		FUNC11(real_dev);
out_vid_del:
	FUNC16(real_dev, vlan->vlan_proto, vlan_id);
	return err;
}