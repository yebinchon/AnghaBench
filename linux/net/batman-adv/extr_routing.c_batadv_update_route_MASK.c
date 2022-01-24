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
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_neigh_node {int dummy; } ;
struct batadv_hard_iface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,struct batadv_orig_node*,struct batadv_hard_iface*,struct batadv_neigh_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_neigh_node*) ; 
 struct batadv_neigh_node* FUNC2 (struct batadv_orig_node*,struct batadv_hard_iface*) ; 

void FUNC3(struct batadv_priv *bat_priv,
			 struct batadv_orig_node *orig_node,
			 struct batadv_hard_iface *recv_if,
			 struct batadv_neigh_node *neigh_node)
{
	struct batadv_neigh_node *router = NULL;

	if (!orig_node)
		goto out;

	router = FUNC2(orig_node, recv_if);

	if (router != neigh_node)
		FUNC0(bat_priv, orig_node, recv_if, neigh_node);

out:
	if (router)
		FUNC1(router);
}