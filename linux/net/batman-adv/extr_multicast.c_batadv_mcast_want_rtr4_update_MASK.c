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
typedef  int u8 ;
struct hlist_node {int dummy; } ;
struct hlist_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  want_lists_lock; int /*<<< orphan*/  num_want_all_rtr4; struct hlist_head want_all_rtr4_list; } ;
struct batadv_priv {TYPE_1__ mcast; } ;
struct batadv_orig_node {int mcast_flags; int /*<<< orphan*/  mcast_handler_lock; struct hlist_node mcast_want_all_rtr4_node; } ;

/* Variables and functions */
 int BATADV_MCAST_WANT_NO_RTR4 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hlist_node*,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct hlist_node*) ; 
 int FUNC5 (struct hlist_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct batadv_priv *bat_priv,
					  struct batadv_orig_node *orig,
					  u8 mcast_flags)
{
	struct hlist_node *node = &orig->mcast_want_all_rtr4_node;
	struct hlist_head *head = &bat_priv->mcast.want_all_rtr4_list;

	FUNC6(&orig->mcast_handler_lock);

	/* switched from flag set to unset */
	if (!(mcast_flags & BATADV_MCAST_WANT_NO_RTR4) &&
	    orig->mcast_flags & BATADV_MCAST_WANT_NO_RTR4) {
		FUNC2(&bat_priv->mcast.num_want_all_rtr4);

		FUNC7(&bat_priv->mcast.want_lists_lock);
		/* flag checks above + mcast_handler_lock prevents this */
		FUNC0(!FUNC5(node));

		FUNC3(node, head);
		FUNC8(&bat_priv->mcast.want_lists_lock);
	/* switched from flag unset to set */
	} else if (mcast_flags & BATADV_MCAST_WANT_NO_RTR4 &&
		   !(orig->mcast_flags & BATADV_MCAST_WANT_NO_RTR4)) {
		FUNC1(&bat_priv->mcast.num_want_all_rtr4);

		FUNC7(&bat_priv->mcast.want_lists_lock);
		/* flag checks above + mcast_handler_lock prevents this */
		FUNC0(FUNC5(node));

		FUNC4(node);
		FUNC8(&bat_priv->mcast.want_lists_lock);
	}
}