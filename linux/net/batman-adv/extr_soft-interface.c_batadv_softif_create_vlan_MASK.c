#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct batadv_softif_vlan {unsigned short vid; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; int /*<<< orphan*/  ap_isolation; struct batadv_priv* bat_priv; } ;
struct batadv_priv {TYPE_1__* soft_iface; int /*<<< orphan*/  softif_vlan_list_lock; int /*<<< orphan*/  softif_vlan_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_NO_MARK ; 
 int /*<<< orphan*/  BATADV_NULL_IFINDEX ; 
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct batadv_softif_vlan* FUNC1 (struct batadv_priv*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_softif_vlan*) ; 
 int FUNC3 (TYPE_1__*,struct batadv_softif_vlan*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct batadv_softif_vlan* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct batadv_priv *bat_priv, unsigned short vid)
{
	struct batadv_softif_vlan *vlan;
	int err;

	FUNC9(&bat_priv->softif_vlan_list_lock);

	vlan = FUNC1(bat_priv, vid);
	if (vlan) {
		FUNC2(vlan);
		FUNC10(&bat_priv->softif_vlan_list_lock);
		return -EEXIST;
	}

	vlan = FUNC8(sizeof(*vlan), GFP_ATOMIC);
	if (!vlan) {
		FUNC10(&bat_priv->softif_vlan_list_lock);
		return -ENOMEM;
	}

	vlan->bat_priv = bat_priv;
	vlan->vid = vid;
	FUNC7(&vlan->refcount);

	FUNC0(&vlan->ap_isolation, 0);

	FUNC6(&vlan->refcount);
	FUNC5(&vlan->list, &bat_priv->softif_vlan_list);
	FUNC10(&bat_priv->softif_vlan_list_lock);

	/* batadv_sysfs_add_vlan cannot be in the spinlock section due to the
	 * sleeping behavior of the sysfs functions and the fs_reclaim lock
	 */
	err = FUNC3(bat_priv->soft_iface, vlan);
	if (err) {
		/* ref for the function */
		FUNC2(vlan);

		/* ref for the list */
		FUNC2(vlan);
		return err;
	}

	/* add a new TT local entry. This one will be marked with the NOPURGE
	 * flag
	 */
	FUNC4(bat_priv->soft_iface,
			    bat_priv->soft_iface->dev_addr, vid,
			    BATADV_NULL_IFINDEX, BATADV_NO_MARK);

	/* don't return reference to new softif_vlan */
	FUNC2(vlan);

	return 0;
}