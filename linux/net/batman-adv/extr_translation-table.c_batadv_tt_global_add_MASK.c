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
typedef  int u16 ;
struct TYPE_3__ {int flags; } ;
struct batadv_tt_local_entry {TYPE_1__ common; } ;
struct batadv_tt_common_entry {unsigned char const* addr; unsigned short vid; int flags; int /*<<< orphan*/  hash_entry; int /*<<< orphan*/  refcount; void* added_at; } ;
struct batadv_tt_global_entry {struct batadv_tt_common_entry common; void* roam_at; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  orig_list_count; int /*<<< orphan*/  orig_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  global_hash; } ;
struct batadv_priv {TYPE_2__ tt; } ;
struct batadv_orig_node {int /*<<< orphan*/  orig; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_TT ; 
 int BATADV_TT_CLIENT_NEW ; 
 int BATADV_TT_CLIENT_ROAM ; 
 int BATADV_TT_CLIENT_TEMP ; 
 int BATADV_TT_CLIENT_WIFI ; 
 int BATADV_TT_SYNC_MASK ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct batadv_priv*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  batadv_choose_tt ; 
 int /*<<< orphan*/  batadv_compare_tt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct batadv_priv*,char*,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct batadv_tt_common_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short) ; 
 int /*<<< orphan*/  batadv_tg_cache ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_tt_global_entry*) ; 
 scalar_t__ FUNC7 (struct batadv_tt_global_entry*,struct batadv_orig_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct batadv_tt_global_entry*) ; 
 struct batadv_tt_global_entry* FUNC9 (struct batadv_priv*,unsigned char const*,unsigned short) ; 
 int /*<<< orphan*/  FUNC10 (struct batadv_tt_global_entry*,struct batadv_orig_node*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct batadv_tt_local_entry*) ; 
 struct batadv_tt_local_entry* FUNC12 (struct batadv_priv*,unsigned char const*,unsigned short) ; 
 int FUNC13 (struct batadv_priv*,unsigned char const*,unsigned short,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char const*,unsigned char const*) ; 
 scalar_t__ FUNC15 (unsigned char const*) ; 
 void* jiffies ; 
 struct batadv_tt_global_entry* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static bool FUNC21(struct batadv_priv *bat_priv,
				 struct batadv_orig_node *orig_node,
				 const unsigned char *tt_addr,
				 unsigned short vid, u16 flags, u8 ttvn)
{
	struct batadv_tt_global_entry *tt_global_entry;
	struct batadv_tt_local_entry *tt_local_entry;
	bool ret = false;
	int hash_added;
	struct batadv_tt_common_entry *common;
	u16 local_flags;

	/* ignore global entries from backbone nodes */
	if (FUNC2(bat_priv, orig_node->orig, vid))
		return true;

	tt_global_entry = FUNC9(bat_priv, tt_addr, vid);
	tt_local_entry = FUNC12(bat_priv, tt_addr, vid);

	/* if the node already has a local client for this entry, it has to wait
	 * for a roaming advertisement instead of manually messing up the global
	 * table
	 */
	if ((flags & BATADV_TT_CLIENT_TEMP) && tt_local_entry &&
	    !(tt_local_entry->common.flags & BATADV_TT_CLIENT_NEW))
		goto out;

	if (!tt_global_entry) {
		tt_global_entry = FUNC16(batadv_tg_cache,
						    GFP_ATOMIC);
		if (!tt_global_entry)
			goto out;

		common = &tt_global_entry->common;
		FUNC14(common->addr, tt_addr);
		common->vid = vid;

		if (!FUNC15(common->addr))
			common->flags = flags & (~BATADV_TT_SYNC_MASK);

		tt_global_entry->roam_at = 0;
		/* node must store current time in case of roaming. This is
		 * needed to purge this entry out on timeout (if nobody claims
		 * it)
		 */
		if (flags & BATADV_TT_CLIENT_ROAM)
			tt_global_entry->roam_at = jiffies;
		FUNC18(&common->refcount);
		common->added_at = jiffies;

		FUNC0(&tt_global_entry->orig_list);
		FUNC1(&tt_global_entry->orig_list_count, 0);
		FUNC19(&tt_global_entry->list_lock);

		FUNC17(&common->refcount);
		hash_added = FUNC4(bat_priv->tt.global_hash,
					     batadv_compare_tt,
					     batadv_choose_tt, common,
					     &common->hash_entry);

		if (FUNC20(hash_added != 0)) {
			/* remove the reference for the hash */
			FUNC8(tt_global_entry);
			goto out_remove;
		}
	} else {
		common = &tt_global_entry->common;
		/* If there is already a global entry, we can use this one for
		 * our processing.
		 * But if we are trying to add a temporary client then here are
		 * two options at this point:
		 * 1) the global client is not a temporary client: the global
		 *    client has to be left as it is, temporary information
		 *    should never override any already known client state
		 * 2) the global client is a temporary client: purge the
		 *    originator list and add the new one orig_entry
		 */
		if (flags & BATADV_TT_CLIENT_TEMP) {
			if (!(common->flags & BATADV_TT_CLIENT_TEMP))
				goto out;
			if (FUNC7(tt_global_entry,
							    orig_node, NULL))
				goto out_remove;
			FUNC6(tt_global_entry);
			goto add_orig_entry;
		}

		/* if the client was temporary added before receiving the first
		 * OGM announcing it, we have to clear the TEMP flag. Also,
		 * remove the previous temporary orig node and re-add it
		 * if required. If the orig entry changed, the new one which
		 * is a non-temporary entry is preferred.
		 */
		if (common->flags & BATADV_TT_CLIENT_TEMP) {
			FUNC6(tt_global_entry);
			common->flags &= ~BATADV_TT_CLIENT_TEMP;
		}

		/* the change can carry possible "attribute" flags like the
		 * TT_CLIENT_TEMP, therefore they have to be copied in the
		 * client entry
		 */
		if (!FUNC15(common->addr))
			common->flags |= flags & (~BATADV_TT_SYNC_MASK);

		/* If there is the BATADV_TT_CLIENT_ROAM flag set, there is only
		 * one originator left in the list and we previously received a
		 * delete + roaming change for this originator.
		 *
		 * We should first delete the old originator before adding the
		 * new one.
		 */
		if (common->flags & BATADV_TT_CLIENT_ROAM) {
			FUNC6(tt_global_entry);
			common->flags &= ~BATADV_TT_CLIENT_ROAM;
			tt_global_entry->roam_at = 0;
		}
	}
add_orig_entry:
	/* add the new orig_entry (if needed) or update it */
	FUNC10(tt_global_entry, orig_node, ttvn,
					flags & BATADV_TT_SYNC_MASK);

	FUNC3(BATADV_DBG_TT, bat_priv,
		   "Creating new global tt entry: %pM (vid: %d, via %pM)\n",
		   common->addr, FUNC5(common->vid),
		   orig_node->orig);
	ret = true;

out_remove:
	/* Do not remove multicast addresses from the local hash on
	 * global additions
	 */
	if (FUNC15(tt_addr))
		goto out;

	/* remove address from local hash if present */
	local_flags = FUNC13(bat_priv, tt_addr, vid,
					     "global tt received",
					     flags & BATADV_TT_CLIENT_ROAM);
	tt_global_entry->common.flags |= local_flags & BATADV_TT_CLIENT_WIFI;

	if (!(flags & BATADV_TT_CLIENT_ROAM))
		/* this is a normal global add. Therefore the client is not in a
		 * roaming state anymore.
		 */
		tt_global_entry->common.flags &= ~BATADV_TT_CLIENT_ROAM;

out:
	if (tt_global_entry)
		FUNC8(tt_global_entry);
	if (tt_local_entry)
		FUNC11(tt_local_entry);
	return ret;
}