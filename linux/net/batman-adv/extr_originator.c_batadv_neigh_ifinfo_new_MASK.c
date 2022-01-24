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
struct batadv_neigh_node {int /*<<< orphan*/  ifinfo_lock; int /*<<< orphan*/  ifinfo_list; } ;
struct batadv_neigh_ifinfo {int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; struct batadv_hard_iface* if_outgoing; } ;
struct batadv_hard_iface {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct batadv_neigh_ifinfo* FUNC1 (struct batadv_neigh_node*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct batadv_neigh_ifinfo* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct batadv_neigh_ifinfo *
FUNC8(struct batadv_neigh_node *neigh,
			struct batadv_hard_iface *if_outgoing)
{
	struct batadv_neigh_ifinfo *neigh_ifinfo;

	FUNC6(&neigh->ifinfo_lock);

	neigh_ifinfo = FUNC1(neigh, if_outgoing);
	if (neigh_ifinfo)
		goto out;

	neigh_ifinfo = FUNC5(sizeof(*neigh_ifinfo), GFP_ATOMIC);
	if (!neigh_ifinfo)
		goto out;

	if (if_outgoing)
		FUNC3(&if_outgoing->refcount);

	FUNC0(&neigh_ifinfo->list);
	FUNC4(&neigh_ifinfo->refcount);
	neigh_ifinfo->if_outgoing = if_outgoing;

	FUNC3(&neigh_ifinfo->refcount);
	FUNC2(&neigh_ifinfo->list, &neigh->ifinfo_list);

out:
	FUNC7(&neigh->ifinfo_lock);

	return neigh_ifinfo;
}