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
struct tid_ampdu_tx {int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/  work; } ;
struct sta_info {TYPE_1__ ampdu_mlme; } ;
typedef  enum ieee80211_agg_stop_reason { ____Placeholder_ieee80211_agg_stop_reason } ieee80211_agg_stop_reason ;

/* Variables and functions */
 int AGG_STOP_DESTROY_STA ; 
 int AGG_STOP_PEER_REQUEST ; 
 int /*<<< orphan*/  HT_AGG_STATE_STOP_CB ; 
 int IEEE80211_NUM_TIDS ; 
 int /*<<< orphan*/  WLAN_BACK_RECIPIENT ; 
 int /*<<< orphan*/  WLAN_REASON_QSTA_LEAVE_QBSS ; 
 int /*<<< orphan*/  FUNC0 (struct sta_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sta_info*,int,struct tid_ampdu_tx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct tid_ampdu_tx* FUNC6 (struct sta_info*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct sta_info *sta,
					 enum ieee80211_agg_stop_reason reason)
{
	int i;

	FUNC4(&sta->ampdu_mlme.mtx);
	for (i = 0; i <  IEEE80211_NUM_TIDS; i++)
		FUNC0(sta, i, WLAN_BACK_RECIPIENT,
						WLAN_REASON_QSTA_LEAVE_QBSS,
						reason != AGG_STOP_DESTROY_STA &&
						reason != AGG_STOP_PEER_REQUEST);

	for (i = 0; i <  IEEE80211_NUM_TIDS; i++)
		FUNC1(sta, i, reason);
	FUNC5(&sta->ampdu_mlme.mtx);

	/*
	 * In case the tear down is part of a reconfigure due to HW restart
	 * request, it is possible that the low level driver requested to stop
	 * the BA session, so handle it to properly clean tid_tx data.
	 */
	if(reason == AGG_STOP_DESTROY_STA) {
		FUNC2(&sta->ampdu_mlme.work);

		FUNC4(&sta->ampdu_mlme.mtx);
		for (i = 0; i < IEEE80211_NUM_TIDS; i++) {
			struct tid_ampdu_tx *tid_tx =
				FUNC6(sta, i);

			if (!tid_tx)
				continue;

			if (FUNC7(HT_AGG_STATE_STOP_CB, &tid_tx->state))
				FUNC3(sta, i, tid_tx);
		}
		FUNC5(&sta->ampdu_mlme.mtx);
	}
}