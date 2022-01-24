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
struct net_device {int dummy; } ;
struct batadv_softif_vlan {int dummy; } ;
struct batadv_priv {int dummy; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 unsigned short BATADV_VLAN_HAS_TAG ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,struct batadv_softif_vlan*) ; 
 struct batadv_softif_vlan* FUNC1 (struct batadv_priv*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_softif_vlan*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct batadv_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, __be16 proto,
				     unsigned short vid)
{
	struct batadv_priv *bat_priv = FUNC4(dev);
	struct batadv_softif_vlan *vlan;

	/* only 802.1Q vlans are supported. batman-adv does not know how to
	 * handle other types
	 */
	if (proto != FUNC3(ETH_P_8021Q))
		return -EINVAL;

	vlan = FUNC1(bat_priv, vid | BATADV_VLAN_HAS_TAG);
	if (!vlan)
		return -ENOENT;

	FUNC0(bat_priv, vlan);

	/* finally free the vlan object */
	FUNC2(vlan);

	return 0;
}