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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  BATADV_NO_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*,struct batadv_softif_vlan*) ; 
 struct batadv_softif_vlan* FUNC2 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_softif_vlan*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct batadv_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

void FUNC7(struct net_device *soft_iface)
{
	struct batadv_priv *bat_priv = FUNC5(soft_iface);
	struct batadv_softif_vlan *vlan;

	FUNC0();

	/* destroy the "untagged" VLAN */
	vlan = FUNC2(bat_priv, BATADV_NO_FLAGS);
	if (vlan) {
		FUNC1(bat_priv, vlan);
		FUNC3(vlan);
	}

	FUNC4(soft_iface);
	FUNC6(soft_iface);
}