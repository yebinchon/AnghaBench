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
struct batadv_tt_local_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct batadv_tt_global_entry {TYPE_1__ common; int /*<<< orphan*/  orig_list; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batadv_tt_global_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*,struct batadv_tt_global_entry*,struct batadv_orig_node*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,struct batadv_tt_global_entry*,struct batadv_orig_node*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_tt_global_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_priv*,struct batadv_tt_global_entry*,char const*) ; 
 struct batadv_tt_global_entry* FUNC5 (struct batadv_priv*,unsigned char const*,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_tt_local_entry*) ; 
 struct batadv_tt_local_entry* FUNC7 (struct batadv_priv*,int /*<<< orphan*/ ,unsigned short) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct batadv_priv *bat_priv,
				 struct batadv_orig_node *orig_node,
				 const unsigned char *addr, unsigned short vid,
				 const char *message, bool roaming)
{
	struct batadv_tt_global_entry *tt_global_entry;
	struct batadv_tt_local_entry *local_entry = NULL;

	tt_global_entry = FUNC5(bat_priv, addr, vid);
	if (!tt_global_entry)
		goto out;

	if (!roaming) {
		FUNC1(bat_priv, tt_global_entry,
					       orig_node, message);

		if (FUNC8(&tt_global_entry->orig_list))
			FUNC4(bat_priv, tt_global_entry,
					      message);

		goto out;
	}

	/* if we are deleting a global entry due to a roam
	 * event, there are two possibilities:
	 * 1) the client roamed from node A to node B => if there
	 *    is only one originator left for this client, we mark
	 *    it with BATADV_TT_CLIENT_ROAM, we start a timer and we
	 *    wait for node B to claim it. In case of timeout
	 *    the entry is purged.
	 *
	 *    If there are other originators left, we directly delete
	 *    the originator.
	 * 2) the client roamed to us => we can directly delete
	 *    the global entry, since it is useless now.
	 */
	local_entry = FUNC7(bat_priv,
						tt_global_entry->common.addr,
						vid);
	if (local_entry) {
		/* local entry exists, case 2: client roamed to us. */
		FUNC0(tt_global_entry);
		FUNC4(bat_priv, tt_global_entry, message);
	} else {
		/* no local entry exists, case 1: check for roaming */
		FUNC2(bat_priv, tt_global_entry,
					     orig_node, message);
	}

out:
	if (tt_global_entry)
		FUNC3(tt_global_entry);
	if (local_entry)
		FUNC6(local_entry);
}