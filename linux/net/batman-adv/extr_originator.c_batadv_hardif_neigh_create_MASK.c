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
typedef  int /*<<< orphan*/  u8 ;
struct batadv_priv {TYPE_2__* algo_ops; } ;
struct batadv_orig_node {int /*<<< orphan*/  const* orig; } ;
struct batadv_hardif_neigh_node {int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; int /*<<< orphan*/  last_seen; struct batadv_hard_iface* if_incoming; int /*<<< orphan*/  orig; int /*<<< orphan*/  addr; } ;
struct batadv_hard_iface {int /*<<< orphan*/  neigh_list_lock; int /*<<< orphan*/  neigh_list; int /*<<< orphan*/  refcount; int /*<<< orphan*/  soft_iface; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* hardif_init ) (struct batadv_hardif_neigh_node*) ;} ;
struct TYPE_4__ {TYPE_1__ neigh; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct batadv_hardif_neigh_node* FUNC1 (struct batadv_hard_iface*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct batadv_hardif_neigh_node* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct batadv_priv* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct batadv_hardif_neigh_node*) ; 

__attribute__((used)) static struct batadv_hardif_neigh_node *
FUNC11(struct batadv_hard_iface *hard_iface,
			   const u8 *neigh_addr,
			   struct batadv_orig_node *orig_node)
{
	struct batadv_priv *bat_priv = FUNC7(hard_iface->soft_iface);
	struct batadv_hardif_neigh_node *hardif_neigh;

	FUNC8(&hard_iface->neigh_list_lock);

	/* check if neighbor hasn't been added in the meantime */
	hardif_neigh = FUNC1(hard_iface, neigh_addr);
	if (hardif_neigh)
		goto out;

	hardif_neigh = FUNC6(sizeof(*hardif_neigh), GFP_ATOMIC);
	if (!hardif_neigh)
		goto out;

	FUNC4(&hard_iface->refcount);
	FUNC0(&hardif_neigh->list);
	FUNC2(hardif_neigh->addr, neigh_addr);
	FUNC2(hardif_neigh->orig, orig_node->orig);
	hardif_neigh->if_incoming = hard_iface;
	hardif_neigh->last_seen = jiffies;

	FUNC5(&hardif_neigh->refcount);

	if (bat_priv->algo_ops->neigh.hardif_init)
		bat_priv->algo_ops->neigh.hardif_init(hardif_neigh);

	FUNC3(&hardif_neigh->list, &hard_iface->neigh_list);

out:
	FUNC9(&hard_iface->neigh_list_lock);
	return hardif_neigh;
}