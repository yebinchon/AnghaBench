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
struct batadv_priv {TYPE_2__* algo_ops; } ;
struct batadv_orig_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* is_eligible ) (struct batadv_priv*,struct batadv_orig_node*,struct batadv_orig_node*) ;} ;
struct TYPE_4__ {TYPE_1__ gw; } ;

/* Variables and functions */
 struct batadv_orig_node* FUNC0 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_priv*,struct batadv_orig_node*,struct batadv_orig_node*) ; 

void FUNC4(struct batadv_priv *bat_priv,
			      struct batadv_orig_node *orig_node)
{
	struct batadv_orig_node *curr_gw_orig;

	/* abort immediately if the routing algorithm does not support gateway
	 * election
	 */
	if (!bat_priv->algo_ops->gw.is_eligible)
		return;

	curr_gw_orig = FUNC0(bat_priv);
	if (!curr_gw_orig)
		goto reselect;

	/* this node already is the gateway */
	if (curr_gw_orig == orig_node)
		goto out;

	if (!bat_priv->algo_ops->gw.is_eligible(bat_priv, curr_gw_orig,
						orig_node))
		goto out;

reselect:
	FUNC1(bat_priv);
out:
	if (curr_gw_orig)
		FUNC2(curr_gw_orig);
}