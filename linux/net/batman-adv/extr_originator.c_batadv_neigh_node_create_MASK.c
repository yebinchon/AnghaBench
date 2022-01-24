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
typedef  int /*<<< orphan*/  u8 ;
struct batadv_orig_node {int /*<<< orphan*/  neigh_list_lock; int /*<<< orphan*/  orig; int /*<<< orphan*/  bat_priv; int /*<<< orphan*/  neigh_list; } ;
struct batadv_neigh_node {int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; struct batadv_hardif_neigh_node* hardif_neigh; int /*<<< orphan*/  last_seen; struct batadv_orig_node* orig_node; struct batadv_hard_iface* if_incoming; int /*<<< orphan*/  addr; int /*<<< orphan*/  ifinfo_lock; int /*<<< orphan*/  ifinfo_list; } ;
struct batadv_hardif_neigh_node {int /*<<< orphan*/  refcount; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_BATMAN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct batadv_hardif_neigh_node* FUNC3 (struct batadv_hard_iface*,int /*<<< orphan*/  const*,struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_hardif_neigh_node*) ; 
 struct batadv_neigh_node* FUNC5 (struct batadv_orig_node*,struct batadv_hard_iface*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct batadv_neigh_node* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct batadv_neigh_node *
FUNC14(struct batadv_orig_node *orig_node,
			 struct batadv_hard_iface *hard_iface,
			 const u8 *neigh_addr)
{
	struct batadv_neigh_node *neigh_node;
	struct batadv_hardif_neigh_node *hardif_neigh = NULL;

	FUNC11(&orig_node->neigh_list_lock);

	neigh_node = FUNC5(orig_node, hard_iface, neigh_addr);
	if (neigh_node)
		goto out;

	hardif_neigh = FUNC3(hard_iface,
							 neigh_addr, orig_node);
	if (!hardif_neigh)
		goto out;

	neigh_node = FUNC10(sizeof(*neigh_node), GFP_ATOMIC);
	if (!neigh_node)
		goto out;

	FUNC1(&neigh_node->list);
	FUNC0(&neigh_node->ifinfo_list);
	FUNC12(&neigh_node->ifinfo_lock);

	FUNC8(&hard_iface->refcount);
	FUNC6(neigh_node->addr, neigh_addr);
	neigh_node->if_incoming = hard_iface;
	neigh_node->orig_node = orig_node;
	neigh_node->last_seen = jiffies;

	/* increment unique neighbor refcount */
	FUNC8(&hardif_neigh->refcount);
	neigh_node->hardif_neigh = hardif_neigh;

	/* extra reference for return */
	FUNC9(&neigh_node->refcount);

	FUNC8(&neigh_node->refcount);
	FUNC7(&neigh_node->list, &orig_node->neigh_list);

	FUNC2(BATADV_DBG_BATMAN, orig_node->bat_priv,
		   "Creating new neighbor %pM for orig_node %pM on interface %s\n",
		   neigh_addr, orig_node->orig, hard_iface->net_dev->name);

out:
	FUNC13(&orig_node->neigh_list_lock);

	if (hardif_neigh)
		FUNC4(hardif_neigh);
	return neigh_node;
}