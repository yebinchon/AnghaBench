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
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;
struct TYPE_3__ {int /*<<< orphan*/  mode; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_neigh_node {int dummy; } ;
struct TYPE_4__ {scalar_t__ tq_avg; } ;
struct batadv_neigh_ifinfo {TYPE_2__ bat_iv; } ;
struct batadv_gw_node {struct batadv_orig_node* orig_node; } ;

/* Variables and functions */
#define  BATADV_GW_MODE_CLIENT 130 
#define  BATADV_GW_MODE_OFF 129 
#define  BATADV_GW_MODE_SERVER 128 
 scalar_t__ BATADV_GW_THRESHOLD ; 
 int /*<<< orphan*/  BATADV_IF_DEFAULT ; 
 scalar_t__ BATADV_TQ_MAX_VALUE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct batadv_neigh_node* FUNC1 (struct batadv_priv*,struct batadv_orig_node*,int /*<<< orphan*/ *) ; 
 unsigned short FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct batadv_gw_node* FUNC3 (struct batadv_priv*) ; 
 struct batadv_gw_node* FUNC4 (struct batadv_priv*,struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_gw_node*) ; 
 struct batadv_neigh_ifinfo* FUNC6 (struct batadv_neigh_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct batadv_neigh_ifinfo*) ; 
 int /*<<< orphan*/  FUNC8 (struct batadv_neigh_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct batadv_orig_node*) ; 
 struct batadv_orig_node* FUNC10 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

bool FUNC12(struct batadv_priv *bat_priv,
			    struct sk_buff *skb)
{
	struct batadv_neigh_node *neigh_curr = NULL;
	struct batadv_neigh_node *neigh_old = NULL;
	struct batadv_orig_node *orig_dst_node = NULL;
	struct batadv_gw_node *gw_node = NULL;
	struct batadv_gw_node *curr_gw = NULL;
	struct batadv_neigh_ifinfo *curr_ifinfo, *old_ifinfo;
	struct ethhdr *ethhdr = (struct ethhdr *)skb->data;
	bool out_of_range = false;
	u8 curr_tq_avg;
	unsigned short vid;

	vid = FUNC2(skb, 0);

	if (FUNC11(ethhdr->h_dest))
		goto out;

	orig_dst_node = FUNC10(bat_priv, ethhdr->h_source,
						 ethhdr->h_dest, vid);
	if (!orig_dst_node)
		goto out;

	gw_node = FUNC4(bat_priv, orig_dst_node);
	if (!gw_node)
		goto out;

	switch (FUNC0(&bat_priv->gw.mode)) {
	case BATADV_GW_MODE_SERVER:
		/* If we are a GW then we are our best GW. We can artificially
		 * set the tq towards ourself as the maximum value
		 */
		curr_tq_avg = BATADV_TQ_MAX_VALUE;
		break;
	case BATADV_GW_MODE_CLIENT:
		curr_gw = FUNC3(bat_priv);
		if (!curr_gw)
			goto out;

		/* packet is going to our gateway */
		if (curr_gw->orig_node == orig_dst_node)
			goto out;

		/* If the dhcp packet has been sent to a different gw,
		 * we have to evaluate whether the old gw is still
		 * reliable enough
		 */
		neigh_curr = FUNC1(bat_priv, curr_gw->orig_node,
						NULL);
		if (!neigh_curr)
			goto out;

		curr_ifinfo = FUNC6(neigh_curr,
						      BATADV_IF_DEFAULT);
		if (!curr_ifinfo)
			goto out;

		curr_tq_avg = curr_ifinfo->bat_iv.tq_avg;
		FUNC7(curr_ifinfo);

		break;
	case BATADV_GW_MODE_OFF:
	default:
		goto out;
	}

	neigh_old = FUNC1(bat_priv, orig_dst_node, NULL);
	if (!neigh_old)
		goto out;

	old_ifinfo = FUNC6(neigh_old, BATADV_IF_DEFAULT);
	if (!old_ifinfo)
		goto out;

	if ((curr_tq_avg - old_ifinfo->bat_iv.tq_avg) > BATADV_GW_THRESHOLD)
		out_of_range = true;
	FUNC7(old_ifinfo);

out:
	if (orig_dst_node)
		FUNC9(orig_dst_node);
	if (curr_gw)
		FUNC5(curr_gw);
	if (gw_node)
		FUNC5(gw_node);
	if (neigh_old)
		FUNC8(neigh_old);
	if (neigh_curr)
		FUNC8(neigh_curr);
	return out_of_range;
}