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
typedef  size_t u16 ;
struct tid_ampdu_rx {int removed; int /*<<< orphan*/  rcu_head; int /*<<< orphan*/  reorder_timer; int /*<<< orphan*/  reorder_lock; int /*<<< orphan*/  session_timer; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  agg_session_valid; int /*<<< orphan*/ * tid_rx; int /*<<< orphan*/  mtx; } ;
struct sta_info {TYPE_2__ sta; int /*<<< orphan*/  sdata; TYPE_1__ ampdu_mlme; struct ieee80211_local* local; } ;
struct ieee80211_local {int dummy; } ;
struct ieee80211_ampdu_params {size_t tid; int amsdu; int /*<<< orphan*/  ssn; int /*<<< orphan*/  timeout; int /*<<< orphan*/  action; TYPE_2__* sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_AMPDU_RX_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t WLAN_BACK_RECIPIENT ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ieee80211_local*,int /*<<< orphan*/ ,struct ieee80211_ampdu_params*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t,char*,int) ; 
 int /*<<< orphan*/  ieee80211_free_tid_rx ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct tid_ampdu_rx* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (size_t,int /*<<< orphan*/ ) ; 

void FUNC14(struct sta_info *sta, u16 tid,
				     u16 initiator, u16 reason, bool tx)
{
	struct ieee80211_local *local = sta->local;
	struct tid_ampdu_rx *tid_rx;
	struct ieee80211_ampdu_params params = {
		.sta = &sta->sta,
		.action = IEEE80211_AMPDU_RX_STOP,
		.tid = tid,
		.amsdu = false,
		.timeout = 0,
		.ssn = 0,
	};

	FUNC7(&sta->ampdu_mlme.mtx);

	tid_rx = FUNC9(sta->ampdu_mlme.tid_rx[tid],
					FUNC8(&sta->ampdu_mlme.mtx));

	if (!FUNC13(tid, sta->ampdu_mlme.agg_session_valid))
		return;

	FUNC0(sta->ampdu_mlme.tid_rx[tid], NULL);
	FUNC1(tid, sta->ampdu_mlme.agg_session_valid);

	FUNC5(sta->sdata,
	       "Rx BA session stop requested for %pM tid %u %s reason: %d\n",
	       sta->sta.addr, tid,
	       initiator == WLAN_BACK_RECIPIENT ? "recipient" : "initiator",
	       (int)reason);

	if (FUNC4(local, sta->sdata, &params))
		FUNC10(sta->sdata,
			   "HW problem - can not stop rx aggregation for %pM tid %d\n",
			   sta->sta.addr, tid);

	/* check if this is a self generated aggregation halt */
	if (initiator == WLAN_BACK_RECIPIENT && tx)
		FUNC6(sta->sdata, sta->sta.addr,
				     tid, WLAN_BACK_RECIPIENT, reason);

	/*
	 * return here in case tid_rx is not assigned - which will happen if
	 * IEEE80211_HW_SUPPORTS_REORDERING_BUFFER is set.
	 */
	if (!tid_rx)
		return;

	FUNC3(&tid_rx->session_timer);

	/* make sure ieee80211_sta_reorder_release() doesn't re-arm the timer */
	FUNC11(&tid_rx->reorder_lock);
	tid_rx->removed = true;
	FUNC12(&tid_rx->reorder_lock);
	FUNC3(&tid_rx->reorder_timer);

	FUNC2(&tid_rx->rcu_head, ieee80211_free_tid_rx);
}