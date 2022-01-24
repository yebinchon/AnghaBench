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
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct batadv_gw_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ BATADV_GW_MODE_CLIENT ; 
 int /*<<< orphan*/  BATADV_UEV_DEL ; 
 int /*<<< orphan*/  BATADV_UEV_GW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct batadv_gw_node* FUNC1 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_gw_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct batadv_priv *bat_priv)
{
	struct batadv_gw_node *curr_gw;

	if (FUNC0(&bat_priv->gw.mode) != BATADV_GW_MODE_CLIENT)
		return;

	curr_gw = FUNC1(bat_priv);
	if (!curr_gw)
		return;

	/* deselect the current gateway so that next time that client mode is
	 * enabled a proper GW_ADD event can be sent
	 */
	FUNC3(bat_priv, NULL);

	/* if batman-adv is switching the gw client mode off and a gateway was
	 * already selected, send a DEL uevent
	 */
	FUNC4(bat_priv, BATADV_UEV_GW, BATADV_UEV_DEL, NULL);

	FUNC2(curr_gw);
}