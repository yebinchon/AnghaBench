#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  mtx; } ;
struct sta_info {scalar_t__ ptk_idx; TYPE_3__ sta; TYPE_2__ ampdu_mlme; } ;
struct TYPE_8__ {int /*<<< orphan*/  wiphy; } ;
struct ieee80211_local {TYPE_4__ hw; } ;
struct TYPE_5__ {int flags; } ;
struct ieee80211_key {int flags; int /*<<< orphan*/  sdata; TYPE_1__ conf; struct sta_info* sta; struct ieee80211_local* local; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGG_STOP_LOCAL_REQUEST ; 
 int /*<<< orphan*/  AMPDU_AGGREGATION ; 
 int /*<<< orphan*/  AMPDU_KEYBORDER_SUPPORT ; 
 int IEEE80211_KEY_FLAG_NO_AUTO_TX ; 
 int IEEE80211_NUM_TIDS ; 
 scalar_t__ INVALID_PTK_KEYIDX ; 
 int KEY_FLAG_TAINTED ; 
 int KEY_FLAG_UPLOADED_TO_HARDWARE ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_CAN_REPLACE_PTK0 ; 
 int /*<<< orphan*/  WLAN_STA_BLOCK_BA ; 
 int /*<<< orphan*/  FUNC0 (struct sta_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct ieee80211_key *old,
				     struct ieee80211_key *new)
{
	struct ieee80211_local *local = new->local;
	struct sta_info *sta = new->sta;
	int i;

	FUNC1(local);

	if (new->conf.flags & IEEE80211_KEY_FLAG_NO_AUTO_TX) {
		/* Extended Key ID key install, initial one or rekey */

		if (sta->ptk_idx != INVALID_PTK_KEYIDX &&
		    !FUNC4(&local->hw, AMPDU_KEYBORDER_SUPPORT)) {
			/* Aggregation Sessions with Extended Key ID must not
			 * mix MPDUs with different keyIDs within one A-MPDU.
			 * Tear down running Tx aggregation sessions and block
			 * new Rx/Tx aggregation requests during rekey to
			 * ensure there are no A-MPDUs when the driver is not
			 * supporting A-MPDU key borders. (Blocking Tx only
			 * would be sufficient but WLAN_STA_BLOCK_BA gets the
			 * job done for the few ms we need it.)
			 */
			FUNC9(sta, WLAN_STA_BLOCK_BA);
			FUNC6(&sta->ampdu_mlme.mtx);
			for (i = 0; i <  IEEE80211_NUM_TIDS; i++)
				FUNC0(sta, i,
								AGG_STOP_LOCAL_REQUEST);
			FUNC7(&sta->ampdu_mlme.mtx);
		}
	} else if (old) {
		/* Rekey without Extended Key ID.
		 * Aggregation sessions are OK when running on SW crypto.
		 * A broken remote STA may cause issues not observed with HW
		 * crypto, though.
		 */
		if (!(old->flags & KEY_FLAG_UPLOADED_TO_HARDWARE))
			return;

		/* Stop Tx till we are on the new key */
		old->flags |= KEY_FLAG_TAINTED;
		FUNC2(sta);
		if (FUNC4(&local->hw, AMPDU_AGGREGATION)) {
			FUNC9(sta, WLAN_STA_BLOCK_BA);
			FUNC5(sta,
							    AGG_STOP_LOCAL_REQUEST);
		}
		if (!FUNC10(local->hw.wiphy,
					     NL80211_EXT_FEATURE_CAN_REPLACE_PTK0)) {
			FUNC8("Rekeying PTK for STA %pM but driver can't safely do that.",
					    sta->sta.addr);
			/* Flushing the driver queues *may* help prevent
			 * the clear text leaks and freezes.
			 */
			FUNC3(local, old->sdata, false);
		}
	}
}