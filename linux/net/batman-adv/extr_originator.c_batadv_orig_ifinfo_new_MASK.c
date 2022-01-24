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
struct batadv_orig_node {int /*<<< orphan*/  neigh_list_lock; int /*<<< orphan*/  ifinfo_list; } ;
struct batadv_orig_ifinfo {unsigned long batman_seqno_reset; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; struct batadv_hard_iface* if_outgoing; } ;
struct batadv_hard_iface {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 struct batadv_hard_iface* BATADV_IF_DEFAULT ; 
 int /*<<< orphan*/  BATADV_RESET_PROTECTION_MS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct batadv_orig_ifinfo* FUNC1 (struct batadv_orig_node*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct batadv_orig_ifinfo* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct batadv_orig_ifinfo *
FUNC9(struct batadv_orig_node *orig_node,
		       struct batadv_hard_iface *if_outgoing)
{
	struct batadv_orig_ifinfo *orig_ifinfo;
	unsigned long reset_time;

	FUNC7(&orig_node->neigh_list_lock);

	orig_ifinfo = FUNC1(orig_node, if_outgoing);
	if (orig_ifinfo)
		goto out;

	orig_ifinfo = FUNC5(sizeof(*orig_ifinfo), GFP_ATOMIC);
	if (!orig_ifinfo)
		goto out;

	if (if_outgoing != BATADV_IF_DEFAULT)
		FUNC3(&if_outgoing->refcount);

	reset_time = jiffies - 1;
	reset_time -= FUNC6(BATADV_RESET_PROTECTION_MS);
	orig_ifinfo->batman_seqno_reset = reset_time;
	orig_ifinfo->if_outgoing = if_outgoing;
	FUNC0(&orig_ifinfo->list);
	FUNC4(&orig_ifinfo->refcount);

	FUNC3(&orig_ifinfo->refcount);
	FUNC2(&orig_ifinfo->list,
			   &orig_node->ifinfo_list);
out:
	FUNC8(&orig_node->neigh_list_lock);
	return orig_ifinfo;
}