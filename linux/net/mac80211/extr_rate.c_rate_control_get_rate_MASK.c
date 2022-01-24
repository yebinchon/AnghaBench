#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_sta {int dummy; } ;
struct sta_info {int /*<<< orphan*/  rate_ctrl_lock; void* rate_ctrl_priv; struct ieee80211_sta sta; } ;
struct rate_control_ref {int /*<<< orphan*/  priv; TYPE_1__* ops; } ;
struct ieee80211_tx_rate_control {int /*<<< orphan*/  skb; } ;
struct TYPE_8__ {TYPE_4__* rates; } ;
struct ieee80211_tx_info {TYPE_3__ control; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; TYPE_2__* local; } ;
struct TYPE_9__ {int idx; scalar_t__ count; scalar_t__ flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  hw; struct rate_control_ref* rate_ctrl; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* get_rate ) (int /*<<< orphan*/ ,struct ieee80211_sta*,void*,struct ieee80211_tx_rate_control*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  HAS_RATE_CONTROL ; 
 struct ieee80211_tx_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int IEEE80211_TX_MAX_RATES ; 
 int /*<<< orphan*/  SUPPORTS_RC_TABLE ; 
 int /*<<< orphan*/  WLAN_STA_RATE_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ieee80211_sta*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ieee80211_sta*,struct ieee80211_tx_rate_control*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ieee80211_sta*,void*,struct ieee80211_tx_rate_control*) ; 
 scalar_t__ FUNC8 (struct sta_info*,int /*<<< orphan*/ ) ; 

void FUNC9(struct ieee80211_sub_if_data *sdata,
			   struct sta_info *sta,
			   struct ieee80211_tx_rate_control *txrc)
{
	struct rate_control_ref *ref = sdata->local->rate_ctrl;
	void *priv_sta = NULL;
	struct ieee80211_sta *ista = NULL;
	struct ieee80211_tx_info *info = FUNC1(txrc->skb);
	int i;

	for (i = 0; i < IEEE80211_TX_MAX_RATES; i++) {
		info->control.rates[i].idx = -1;
		info->control.rates[i].flags = 0;
		info->control.rates[i].count = 0;
	}

	if (FUNC4(sta ? &sta->sta : NULL, txrc))
		return;

	if (FUNC3(&sdata->local->hw, HAS_RATE_CONTROL))
		return;

	if (sta && FUNC8(sta, WLAN_STA_RATE_CONTROL)) {
		ista = &sta->sta;
		priv_sta = sta->rate_ctrl_priv;
	}

	if (ista) {
		FUNC5(&sta->rate_ctrl_lock);
		ref->ops->get_rate(ref->priv, ista, priv_sta, txrc);
		FUNC6(&sta->rate_ctrl_lock);
	} else {
		FUNC4(NULL, txrc);
	}

	if (FUNC3(&sdata->local->hw, SUPPORTS_RC_TABLE))
		return;

	FUNC2(&sdata->vif, ista, txrc->skb,
			       info->control.rates,
			       FUNC0(info->control.rates));
}