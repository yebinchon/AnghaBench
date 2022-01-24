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
struct vlan_dev_priv {int flags; int /*<<< orphan*/  vlan_proto; int /*<<< orphan*/  vlan_id; struct net_device* real_dev; } ;
struct net_device {int /*<<< orphan*/  vlan_info; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int VLAN_FLAG_GVRP ; 
 int VLAN_FLAG_MVRP ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct net_device*) ; 
 struct vlan_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct list_head*) ; 
 struct vlan_dev_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct vlan_group*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC13(struct net_device *dev, struct list_head *head)
{
	struct vlan_dev_priv *vlan = FUNC6(dev);
	struct net_device *real_dev = vlan->real_dev;
	struct vlan_info *vlan_info;
	struct vlan_group *grp;
	u16 vlan_id = vlan->vlan_id;

	FUNC0();

	vlan_info = FUNC4(real_dev->vlan_info);
	FUNC1(!vlan_info);

	grp = &vlan_info->grp;

	grp->nr_vlan_devs--;

	if (vlan->flags & VLAN_FLAG_MVRP)
		FUNC10(dev);
	if (vlan->flags & VLAN_FLAG_GVRP)
		FUNC8(dev);

	FUNC7(grp, vlan->vlan_proto, vlan_id, NULL);

	FUNC3(real_dev, dev);
	/* Because unregister_netdevice_queue() makes sure at least one rcu
	 * grace period is respected before device freeing,
	 * we dont need to call synchronize_net() here.
	 */
	FUNC5(dev, head);

	if (grp->nr_vlan_devs == 0) {
		FUNC11(real_dev);
		FUNC9(real_dev);
	}

	FUNC12(real_dev, vlan->vlan_proto, vlan_id);

	/* Get rid of the vlan's reference to real_dev */
	FUNC2(real_dev);
}