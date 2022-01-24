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
struct batadv_tvlv_gateway_data {scalar_t__ bandwidth_down; scalar_t__ bandwidth_up; } ;
struct TYPE_2__ {int /*<<< orphan*/  generation; int /*<<< orphan*/  gateway_list; int /*<<< orphan*/  list_lock; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct batadv_orig_node {int /*<<< orphan*/  orig; int /*<<< orphan*/  refcount; } ;
struct batadv_gw_node {int bandwidth_down; int bandwidth_up; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; struct batadv_orig_node* orig_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_BATMAN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_gw_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct batadv_gw_node* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct batadv_priv *bat_priv,
			       struct batadv_orig_node *orig_node,
			       struct batadv_tvlv_gateway_data *gateway)
{
	struct batadv_gw_node *gw_node;

	FUNC7(&bat_priv->gw.list_lock);

	if (gateway->bandwidth_down == 0)
		return;

	gw_node = FUNC6(sizeof(*gw_node), GFP_ATOMIC);
	if (!gw_node)
		return;

	FUNC5(&gw_node->refcount);
	FUNC0(&gw_node->list);
	FUNC4(&orig_node->refcount);
	gw_node->orig_node = orig_node;
	gw_node->bandwidth_down = FUNC8(gateway->bandwidth_down);
	gw_node->bandwidth_up = FUNC8(gateway->bandwidth_up);

	FUNC4(&gw_node->refcount);
	FUNC3(&gw_node->list, &bat_priv->gw.gateway_list);
	bat_priv->gw.generation++;

	FUNC1(BATADV_DBG_BATMAN, bat_priv,
		   "Found new gateway %pM -> gw bandwidth: %u.%u/%u.%u MBit\n",
		   orig_node->orig,
		   FUNC8(gateway->bandwidth_down) / 10,
		   FUNC8(gateway->bandwidth_down) % 10,
		   FUNC8(gateway->bandwidth_up) / 10,
		   FUNC8(gateway->bandwidth_up) % 10);

	/* don't return reference to new gw_node */
	FUNC2(gw_node);
}