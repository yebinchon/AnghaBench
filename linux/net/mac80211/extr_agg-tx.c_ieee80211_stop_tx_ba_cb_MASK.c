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
struct tid_ampdu_tx {scalar_t__ stop_initiator; scalar_t__ tx_stop; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct sta_info {TYPE_1__ sta; int /*<<< orphan*/  lock; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_sub_if_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HT_AGG_STATE_STOPPING ; 
 scalar_t__ WLAN_BACK_INITIATOR ; 
 int /*<<< orphan*/  WLAN_REASON_QSTA_NOT_USE ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct sta_info *sta, int tid,
			     struct tid_ampdu_tx *tid_tx)
{
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	bool send_delba = false;

	FUNC0(sdata, "Stopping Tx BA session for %pM tid %d\n",
	       sta->sta.addr, tid);

	FUNC3(&sta->lock);

	if (!FUNC5(HT_AGG_STATE_STOPPING, &tid_tx->state)) {
		FUNC0(sdata,
		       "unexpected callback to A-MPDU stop for %pM tid %d\n",
		       sta->sta.addr, tid);
		goto unlock_sta;
	}

	if (tid_tx->stop_initiator == WLAN_BACK_INITIATOR && tid_tx->tx_stop)
		send_delba = true;

	FUNC1(sta, tid);

 unlock_sta:
	FUNC4(&sta->lock);

	if (send_delba)
		FUNC2(sdata, sta->sta.addr, tid,
			WLAN_BACK_INITIATOR, WLAN_REASON_QSTA_NOT_USE);
}