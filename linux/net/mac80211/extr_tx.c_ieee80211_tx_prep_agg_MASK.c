#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tid_ampdu_tx {int /*<<< orphan*/  last_tx; int /*<<< orphan*/  pending; int /*<<< orphan*/  state; } ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * vif; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct ieee80211_tx_data {TYPE_4__* local; TYPE_5__* sta; TYPE_3__* sdata; } ;
struct TYPE_7__ {int /*<<< orphan*/  aid; int /*<<< orphan*/  addr; int /*<<< orphan*/ * txq; } ;
struct TYPE_11__ {int /*<<< orphan*/  lock; TYPE_1__ sta; int /*<<< orphan*/  sdata; } ;
struct TYPE_10__ {int /*<<< orphan*/  hw; } ;
struct TYPE_9__ {int /*<<< orphan*/  vif; } ;

/* Variables and functions */
 int /*<<< orphan*/  HT_AGG_STATE_OPERATIONAL ; 
 int /*<<< orphan*/  HT_AGG_STATE_WANT_START ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_CTL_NO_PS_BUFFER ; 
 int IEEE80211_TX_INTFL_NEED_TXPROCESSING ; 
 int IEEE80211_TX_TEMPORARY_FLAGS ; 
 scalar_t__ STA_MAX_TX_BUFFER ; 
 int /*<<< orphan*/  WLAN_STA_SP ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tid_ampdu_tx* FUNC5 (TYPE_5__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC10(struct ieee80211_tx_data *tx,
				  struct sk_buff *skb,
				  struct ieee80211_tx_info *info,
				  struct tid_ampdu_tx *tid_tx,
				  int tid)
{
	bool queued = false;
	bool reset_agg_timer = false;
	struct sk_buff *purge_skb = NULL;

	if (FUNC9(HT_AGG_STATE_OPERATIONAL, &tid_tx->state)) {
		info->flags |= IEEE80211_TX_CTL_AMPDU;
		reset_agg_timer = true;
	} else if (FUNC9(HT_AGG_STATE_WANT_START, &tid_tx->state)) {
		/*
		 * nothing -- this aggregation session is being started
		 * but that might still fail with the driver
		 */
	} else if (!tx->sta->sta.txq[tid]) {
		FUNC7(&tx->sta->lock);
		/*
		 * Need to re-check now, because we may get here
		 *
		 *  1) in the window during which the setup is actually
		 *     already done, but not marked yet because not all
		 *     packets are spliced over to the driver pending
		 *     queue yet -- if this happened we acquire the lock
		 *     either before or after the splice happens, but
		 *     need to recheck which of these cases happened.
		 *
		 *  2) during session teardown, if the OPERATIONAL bit
		 *     was cleared due to the teardown but the pointer
		 *     hasn't been assigned NULL yet (or we loaded it
		 *     before it was assigned) -- in this case it may
		 *     now be NULL which means we should just let the
		 *     packet pass through because splicing the frames
		 *     back is already done.
		 */
		tid_tx = FUNC5(tx->sta, tid);

		if (!tid_tx) {
			/* do nothing, let packet pass through */
		} else if (FUNC9(HT_AGG_STATE_OPERATIONAL, &tid_tx->state)) {
			info->flags |= IEEE80211_TX_CTL_AMPDU;
			reset_agg_timer = true;
		} else {
			queued = true;
			if (info->flags & IEEE80211_TX_CTL_NO_PS_BUFFER) {
				FUNC2(tx->sta, WLAN_STA_SP);
				FUNC4(tx->sta->sdata,
				       "STA %pM aid %d: SP frame queued, close the SP w/o telling the peer\n",
				       tx->sta->sta.addr, tx->sta->sta.aid);
			}
			info->control.vif = &tx->sdata->vif;
			info->flags |= IEEE80211_TX_INTFL_NEED_TXPROCESSING;
			info->flags &= ~IEEE80211_TX_TEMPORARY_FLAGS;
			FUNC1(&tid_tx->pending, skb);
			if (FUNC6(&tid_tx->pending) > STA_MAX_TX_BUFFER)
				purge_skb = FUNC0(&tid_tx->pending);
		}
		FUNC8(&tx->sta->lock);

		if (purge_skb)
			FUNC3(&tx->local->hw, purge_skb);
	}

	/* reset session timer */
	if (reset_agg_timer)
		tid_tx->last_tx = jiffies;

	return queued;
}