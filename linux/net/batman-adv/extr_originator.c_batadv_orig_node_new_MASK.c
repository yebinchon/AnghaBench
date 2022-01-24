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
struct batadv_priv {int dummy; } ;
struct batadv_orig_node_vlan {int dummy; } ;
struct batadv_orig_node {int last_seen; unsigned long bcast_seqno_reset; TYPE_1__* fragments; int /*<<< orphan*/  mcast_handler_lock; int /*<<< orphan*/  mcast_want_all_ipv6_node; int /*<<< orphan*/  mcast_want_all_ipv4_node; int /*<<< orphan*/  mcast_want_all_unsnoopables_node; int /*<<< orphan*/  mcast_flags; scalar_t__ tt_buff_len; int /*<<< orphan*/ * tt_buff; int /*<<< orphan*/  last_ttvn; int /*<<< orphan*/  orig; struct batadv_priv* bat_priv; int /*<<< orphan*/  refcount; int /*<<< orphan*/  vlan_list_lock; int /*<<< orphan*/  tt_lock; int /*<<< orphan*/  tt_buff_lock; int /*<<< orphan*/  neigh_list_lock; int /*<<< orphan*/  bcast_seqno_lock; int /*<<< orphan*/  ifinfo_list; int /*<<< orphan*/  vlan_list; int /*<<< orphan*/  neigh_list; } ;
struct TYPE_2__ {scalar_t__ size; int /*<<< orphan*/  lock; int /*<<< orphan*/  fragment_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_BATMAN ; 
 int BATADV_FRAG_BUFFER_COUNT ; 
 int /*<<< orphan*/  BATADV_MCAST_WANT_NO_RTR4 ; 
 int /*<<< orphan*/  BATADV_MCAST_WANT_NO_RTR6 ; 
 int /*<<< orphan*/  BATADV_NO_FLAGS ; 
 int /*<<< orphan*/  BATADV_RESET_PROTECTION_MS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_orig_node*) ; 
 struct batadv_orig_node_vlan* FUNC6 (struct batadv_orig_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct batadv_orig_node_vlan*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC9 (struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct batadv_orig_node* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

struct batadv_orig_node *FUNC14(struct batadv_priv *bat_priv,
					      const u8 *addr)
{
	struct batadv_orig_node *orig_node;
	struct batadv_orig_node_vlan *vlan;
	unsigned long reset_time;
	int i;

	FUNC4(BATADV_DBG_BATMAN, bat_priv,
		   "Creating new originator: %pM\n", addr);

	orig_node = FUNC11(sizeof(*orig_node), GFP_ATOMIC);
	if (!orig_node)
		return NULL;

	FUNC0(&orig_node->neigh_list);
	FUNC0(&orig_node->vlan_list);
	FUNC0(&orig_node->ifinfo_list);
	FUNC13(&orig_node->bcast_seqno_lock);
	FUNC13(&orig_node->neigh_list_lock);
	FUNC13(&orig_node->tt_buff_lock);
	FUNC13(&orig_node->tt_lock);
	FUNC13(&orig_node->vlan_list_lock);

	FUNC5(orig_node);

	/* extra reference for return */
	FUNC10(&orig_node->refcount);

	orig_node->bat_priv = bat_priv;
	FUNC8(orig_node->orig, addr);
	FUNC3(orig_node);
	FUNC2(&orig_node->last_ttvn, 0);
	orig_node->tt_buff = NULL;
	orig_node->tt_buff_len = 0;
	orig_node->last_seen = jiffies;
	reset_time = jiffies - 1 - FUNC12(BATADV_RESET_PROTECTION_MS);
	orig_node->bcast_seqno_reset = reset_time;

#ifdef CONFIG_BATMAN_ADV_MCAST
	orig_node->mcast_flags = BATADV_MCAST_WANT_NO_RTR4;
	orig_node->mcast_flags |= BATADV_MCAST_WANT_NO_RTR6;
	INIT_HLIST_NODE(&orig_node->mcast_want_all_unsnoopables_node);
	INIT_HLIST_NODE(&orig_node->mcast_want_all_ipv4_node);
	INIT_HLIST_NODE(&orig_node->mcast_want_all_ipv6_node);
	spin_lock_init(&orig_node->mcast_handler_lock);
#endif

	/* create a vlan object for the "untagged" LAN */
	vlan = FUNC6(orig_node, BATADV_NO_FLAGS);
	if (!vlan)
		goto free_orig_node;
	/* batadv_orig_node_vlan_new() increases the refcounter.
	 * Immediately release vlan since it is not needed anymore in this
	 * context
	 */
	FUNC7(vlan);

	for (i = 0; i < BATADV_FRAG_BUFFER_COUNT; i++) {
		FUNC0(&orig_node->fragments[i].fragment_list);
		FUNC13(&orig_node->fragments[i].lock);
		orig_node->fragments[i].size = 0;
	}

	return orig_node;
free_orig_node:
	FUNC9(orig_node);
	return NULL;
}