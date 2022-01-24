#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct txq_info {int /*<<< orphan*/  schedule_order; } ;
struct TYPE_6__ {struct ieee80211_txq** txq; int /*<<< orphan*/  aid; int /*<<< orphan*/  addr; } ;
struct sta_info {int /*<<< orphan*/  txq_buffered_tids; TYPE_3__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct ps_data {int /*<<< orphan*/  num_sta_ps; } ;
struct ieee80211_txq {size_t ac; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_2__* bss; TYPE_1__ vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/ * active_txq_lock; int /*<<< orphan*/  hw; } ;
struct TYPE_5__ {struct ps_data ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  AP_LINK_PS ; 
 int IEEE80211_NUM_TIDS ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_AP_VLAN ; 
 int /*<<< orphan*/  STA_NOTIFY_SLEEP ; 
 int /*<<< orphan*/  WLAN_STA_PS_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct txq_info* FUNC12 (struct ieee80211_txq*) ; 
 scalar_t__ FUNC13 (struct ieee80211_txq*) ; 

__attribute__((used)) static void FUNC14(struct sta_info *sta)
{
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	struct ieee80211_local *local = sdata->local;
	struct ps_data *ps;
	int tid;

	if (sta->sdata->vif.type == NL80211_IFTYPE_AP ||
	    sta->sdata->vif.type == NL80211_IFTYPE_AP_VLAN)
		ps = &sdata->bss->ps;
	else
		return;

	FUNC0(&ps->num_sta_ps);
	FUNC9(sta, WLAN_STA_PS_STA);
	if (!FUNC4(&local->hw, AP_LINK_PS))
		FUNC2(local, sdata, STA_NOTIFY_SLEEP, &sta->sta);
	FUNC7(sdata, "STA %pM aid %d enters power save mode\n",
	       sta->sta.addr, sta->sta.aid);

	FUNC3(sta);

	if (!sta->sta.txq[0])
		return;

	for (tid = 0; tid < IEEE80211_NUM_TIDS; tid++) {
		struct ieee80211_txq *txq = sta->sta.txq[tid];
		struct txq_info *txqi = FUNC12(txq);

		FUNC10(&local->active_txq_lock[txq->ac]);
		if (!FUNC6(&txqi->schedule_order))
			FUNC5(&txqi->schedule_order);
		FUNC11(&local->active_txq_lock[txq->ac]);

		if (FUNC13(txq))
			FUNC8(tid, &sta->txq_buffered_tids);
		else
			FUNC1(tid, &sta->txq_buffered_tids);
	}
}