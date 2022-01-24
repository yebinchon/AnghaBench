#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct txq_info {int dummy; } ;
struct tid_ampdu_tx {int /*<<< orphan*/  pending; } ;
struct TYPE_11__ {int /*<<< orphan*/ * tid_tx; struct tid_ampdu_tx** tid_start_tx; } ;
struct TYPE_10__ {scalar_t__* txq; } ;
struct sta_info {TYPE_5__ ampdu_mlme; int /*<<< orphan*/  drv_deliver_wk; int /*<<< orphan*/ * tx_filtered; int /*<<< orphan*/ * ps_tx_buf; TYPE_4__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct ps_data {int /*<<< orphan*/  num_sta_ps; } ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_8__ {struct ps_data ps; } ;
struct TYPE_9__ {TYPE_2__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_6__ vif; TYPE_3__ u; TYPE_1__* bss; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; int /*<<< orphan*/  total_ps_buffered; } ;
struct TYPE_7__ {struct ps_data ps; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int IEEE80211_NUM_ACS ; 
 int IEEE80211_NUM_TIDS ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_AP_VLAN ; 
 int /*<<< orphan*/  WLAN_STA_PS_DELIVER ; 
 int /*<<< orphan*/  WLAN_STA_PS_DRIVER ; 
 int /*<<< orphan*/  WLAN_STA_PS_STA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*,struct txq_info*) ; 
 scalar_t__ FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (struct tid_ampdu_tx*) ; 
 int /*<<< orphan*/  FUNC8 (struct sta_info*) ; 
 struct tid_ampdu_tx* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct sta_info*,int /*<<< orphan*/ ) ; 
 struct txq_info* FUNC12 (scalar_t__) ; 

__attribute__((used)) static void FUNC13(struct sta_info *sta)
{
	int ac, i;
	struct tid_ampdu_tx *tid_tx;
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	struct ieee80211_local *local = sdata->local;
	struct ps_data *ps;

	if (FUNC11(sta, WLAN_STA_PS_STA) ||
	    FUNC11(sta, WLAN_STA_PS_DRIVER) ||
	    FUNC11(sta, WLAN_STA_PS_DELIVER)) {
		if (sta->sdata->vif.type == NL80211_IFTYPE_AP ||
		    sta->sdata->vif.type == NL80211_IFTYPE_AP_VLAN)
			ps = &sdata->bss->ps;
		else if (FUNC6(&sdata->vif))
			ps = &sdata->u.mesh.ps;
		else
			return;

		FUNC3(sta, WLAN_STA_PS_STA);
		FUNC3(sta, WLAN_STA_PS_DRIVER);
		FUNC3(sta, WLAN_STA_PS_DELIVER);

		FUNC1(&ps->num_sta_ps);
	}

	if (sta->sta.txq[0]) {
		for (i = 0; i < FUNC0(sta->sta.txq); i++) {
			struct txq_info *txqi;

			if (!sta->sta.txq[i])
				continue;

			txqi = FUNC12(sta->sta.txq[i]);

			FUNC5(local, txqi);
		}
	}

	for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
		local->total_ps_buffered -= FUNC10(&sta->ps_tx_buf[ac]);
		FUNC4(&local->hw, &sta->ps_tx_buf[ac]);
		FUNC4(&local->hw, &sta->tx_filtered[ac]);
	}

	if (FUNC6(&sdata->vif))
		FUNC8(sta);

	FUNC2(&sta->drv_deliver_wk);

	/*
	 * Destroy aggregation state here. It would be nice to wait for the
	 * driver to finish aggregation stop and then clean up, but for now
	 * drivers have to handle aggregation stop being requested, followed
	 * directly by station destruction.
	 */
	for (i = 0; i < IEEE80211_NUM_TIDS; i++) {
		FUNC7(sta->ampdu_mlme.tid_start_tx[i]);
		tid_tx = FUNC9(sta->ampdu_mlme.tid_tx[i]);
		if (!tid_tx)
			continue;
		FUNC4(&local->hw, &tid_tx->pending);
		FUNC7(tid_tx);
	}
}