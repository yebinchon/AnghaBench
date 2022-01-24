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
struct batadv_tvlv_gateway_data {int /*<<< orphan*/  bandwidth_down; int /*<<< orphan*/  bandwidth_up; } ;
struct TYPE_2__ {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  generation; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct batadv_orig_node {int /*<<< orphan*/  orig; } ;
struct batadv_gw_node {int bandwidth_down; int bandwidth_up; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_BATMAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int /*<<< orphan*/ ,...) ; 
 struct batadv_gw_node* FUNC1 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,struct batadv_orig_node*,struct batadv_tvlv_gateway_data*) ; 
 struct batadv_gw_node* FUNC3 (struct batadv_priv*,struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_gw_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct batadv_priv *bat_priv,
			   struct batadv_orig_node *orig_node,
			   struct batadv_tvlv_gateway_data *gateway)
{
	struct batadv_gw_node *gw_node, *curr_gw = NULL;

	FUNC9(&bat_priv->gw.list_lock);
	gw_node = FUNC3(bat_priv, orig_node);
	if (!gw_node) {
		FUNC2(bat_priv, orig_node, gateway);
		FUNC10(&bat_priv->gw.list_lock);
		goto out;
	}
	FUNC10(&bat_priv->gw.list_lock);

	if (gw_node->bandwidth_down == FUNC8(gateway->bandwidth_down) &&
	    gw_node->bandwidth_up == FUNC8(gateway->bandwidth_up))
		goto out;

	FUNC0(BATADV_DBG_BATMAN, bat_priv,
		   "Gateway bandwidth of originator %pM changed from %u.%u/%u.%u MBit to %u.%u/%u.%u MBit\n",
		   orig_node->orig,
		   gw_node->bandwidth_down / 10,
		   gw_node->bandwidth_down % 10,
		   gw_node->bandwidth_up / 10,
		   gw_node->bandwidth_up % 10,
		   FUNC8(gateway->bandwidth_down) / 10,
		   FUNC8(gateway->bandwidth_down) % 10,
		   FUNC8(gateway->bandwidth_up) / 10,
		   FUNC8(gateway->bandwidth_up) % 10);

	gw_node->bandwidth_down = FUNC8(gateway->bandwidth_down);
	gw_node->bandwidth_up = FUNC8(gateway->bandwidth_up);

	if (FUNC8(gateway->bandwidth_down) == 0) {
		FUNC0(BATADV_DBG_BATMAN, bat_priv,
			   "Gateway %pM removed from gateway list\n",
			   orig_node->orig);

		/* Note: We don't need a NULL check here, since curr_gw never
		 * gets dereferenced.
		 */
		FUNC9(&bat_priv->gw.list_lock);
		if (!FUNC7(&gw_node->list)) {
			FUNC6(&gw_node->list);
			FUNC4(gw_node);
			bat_priv->gw.generation++;
		}
		FUNC10(&bat_priv->gw.list_lock);

		curr_gw = FUNC1(bat_priv);
		if (gw_node == curr_gw)
			FUNC5(bat_priv);

		if (curr_gw)
			FUNC4(curr_gw);
	}

out:
	if (gw_node)
		FUNC4(gw_node);
}