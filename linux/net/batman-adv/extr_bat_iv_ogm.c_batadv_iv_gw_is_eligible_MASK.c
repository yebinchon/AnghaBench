#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_4__ {int /*<<< orphan*/  sel_class; } ;
struct batadv_priv {TYPE_2__ gw; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_neigh_node {int dummy; } ;
struct TYPE_3__ {scalar_t__ tq_avg; } ;
struct batadv_neigh_ifinfo {TYPE_1__ bat_iv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_BATMAN ; 
 int /*<<< orphan*/  BATADV_IF_DEFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct batadv_priv*,char*,scalar_t__,scalar_t__) ; 
 struct batadv_neigh_ifinfo* FUNC2 (struct batadv_neigh_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_neigh_ifinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_neigh_node*) ; 
 struct batadv_neigh_node* FUNC5 (struct batadv_orig_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct batadv_priv *bat_priv,
				     struct batadv_orig_node *curr_gw_orig,
				     struct batadv_orig_node *orig_node)
{
	struct batadv_neigh_ifinfo *router_orig_ifinfo = NULL;
	struct batadv_neigh_ifinfo *router_gw_ifinfo = NULL;
	struct batadv_neigh_node *router_gw = NULL;
	struct batadv_neigh_node *router_orig = NULL;
	u8 gw_tq_avg, orig_tq_avg;
	bool ret = false;

	/* dynamic re-election is performed only on fast or late switch */
	if (FUNC0(&bat_priv->gw.sel_class) <= 2)
		return false;

	router_gw = FUNC5(curr_gw_orig, BATADV_IF_DEFAULT);
	if (!router_gw) {
		ret = true;
		goto out;
	}

	router_gw_ifinfo = FUNC2(router_gw,
						   BATADV_IF_DEFAULT);
	if (!router_gw_ifinfo) {
		ret = true;
		goto out;
	}

	router_orig = FUNC5(orig_node, BATADV_IF_DEFAULT);
	if (!router_orig)
		goto out;

	router_orig_ifinfo = FUNC2(router_orig,
						     BATADV_IF_DEFAULT);
	if (!router_orig_ifinfo)
		goto out;

	gw_tq_avg = router_gw_ifinfo->bat_iv.tq_avg;
	orig_tq_avg = router_orig_ifinfo->bat_iv.tq_avg;

	/* the TQ value has to be better */
	if (orig_tq_avg < gw_tq_avg)
		goto out;

	/* if the routing class is greater than 3 the value tells us how much
	 * greater the TQ value of the new gateway must be
	 */
	if ((FUNC0(&bat_priv->gw.sel_class) > 3) &&
	    (orig_tq_avg - gw_tq_avg < FUNC0(&bat_priv->gw.sel_class)))
		goto out;

	FUNC1(BATADV_DBG_BATMAN, bat_priv,
		   "Restarting gateway selection: better gateway found (tq curr: %i, tq new: %i)\n",
		   gw_tq_avg, orig_tq_avg);

	ret = true;
out:
	if (router_gw_ifinfo)
		FUNC3(router_gw_ifinfo);
	if (router_orig_ifinfo)
		FUNC3(router_orig_ifinfo);
	if (router_gw)
		FUNC4(router_gw);
	if (router_orig)
		FUNC4(router_orig);

	return ret;
}