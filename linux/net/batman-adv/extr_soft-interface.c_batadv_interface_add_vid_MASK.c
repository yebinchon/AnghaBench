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
struct net_device {int dummy; } ;
struct batadv_softif_vlan {int /*<<< orphan*/  kobj; } ;
struct batadv_priv {TYPE_1__* soft_iface; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_NO_MARK ; 
 int /*<<< orphan*/  BATADV_NULL_IFINDEX ; 
 unsigned short BATADV_VLAN_HAS_TAG ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int FUNC0 (struct batadv_priv*,unsigned short) ; 
 struct batadv_softif_vlan* FUNC1 (struct batadv_priv*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_softif_vlan*) ; 
 int FUNC3 (TYPE_1__*,struct batadv_softif_vlan*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct batadv_priv* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, __be16 proto,
				    unsigned short vid)
{
	struct batadv_priv *bat_priv = FUNC6(dev);
	struct batadv_softif_vlan *vlan;
	int ret;

	/* only 802.1Q vlans are supported.
	 * batman-adv does not know how to handle other types
	 */
	if (proto != FUNC5(ETH_P_8021Q))
		return -EINVAL;

	vid |= BATADV_VLAN_HAS_TAG;

	/* if a new vlan is getting created and it already exists, it means that
	 * it was not deleted yet. batadv_softif_vlan_get() increases the
	 * refcount in order to revive the object.
	 *
	 * if it does not exist then create it.
	 */
	vlan = FUNC1(bat_priv, vid);
	if (!vlan)
		return FUNC0(bat_priv, vid);

	/* recreate the sysfs object if it was already destroyed (and it should
	 * be since we received a kill_vid() for this vlan
	 */
	if (!vlan->kobj) {
		ret = FUNC3(bat_priv->soft_iface, vlan);
		if (ret) {
			FUNC2(vlan);
			return ret;
		}
	}

	/* add a new TT local entry. This one will be marked with the NOPURGE
	 * flag. This must be added again, even if the vlan object already
	 * exists, because the entry was deleted by kill_vid()
	 */
	FUNC4(bat_priv->soft_iface,
			    bat_priv->soft_iface->dev_addr, vid,
			    BATADV_NULL_IFINDEX, BATADV_NO_MARK);

	return 0;
}