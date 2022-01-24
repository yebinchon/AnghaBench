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
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_tx_data {TYPE_1__* local; int /*<<< orphan*/  skbs; int /*<<< orphan*/ * skb; } ;
typedef  scalar_t__ ieee80211_tx_result ;
struct TYPE_2__ {int /*<<< orphan*/  tx_handlers_queued; int /*<<< orphan*/  hw; int /*<<< orphan*/  tx_handlers_drop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HAS_RATE_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ieee80211_tx_info* FUNC2 (int /*<<< orphan*/ *) ; 
 int IEEE80211_TX_INTFL_RETRANSMISSION ; 
 scalar_t__ TX_CONTINUE ; 
 scalar_t__ TX_DROP ; 
 scalar_t__ TX_QUEUED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ieee80211_tx_h_calculate_duration ; 
 int /*<<< orphan*/  ieee80211_tx_h_encrypt ; 
 int /*<<< orphan*/  ieee80211_tx_h_fragment ; 
 int /*<<< orphan*/  ieee80211_tx_h_michael_mic_add ; 
 int /*<<< orphan*/  ieee80211_tx_h_sequence ; 
 int /*<<< orphan*/  ieee80211_tx_h_stats ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_tx_data *tx)
{
	struct ieee80211_tx_info *info = FUNC2(tx->skb);
	ieee80211_tx_result res = TX_CONTINUE;

	if (FUNC7(info->flags & IEEE80211_TX_INTFL_RETRANSMISSION)) {
		FUNC3(&tx->skbs, tx->skb);
		tx->skb = NULL;
		goto txh_done;
	}

	FUNC0(ieee80211_tx_h_michael_mic_add);
	FUNC0(ieee80211_tx_h_sequence);
	FUNC0(ieee80211_tx_h_fragment);
	/* handlers after fragment must be aware of tx info fragmentation! */
	FUNC0(ieee80211_tx_h_stats);
	FUNC0(ieee80211_tx_h_encrypt);
	if (!FUNC5(&tx->local->hw, HAS_RATE_CONTROL))
		FUNC0(ieee80211_tx_h_calculate_duration);
#undef CALL_TXH

 txh_done:
	if (FUNC7(res == TX_DROP)) {
		FUNC1(tx->local->tx_handlers_drop);
		if (tx->skb)
			FUNC4(&tx->local->hw, tx->skb);
		else
			FUNC6(&tx->local->hw, &tx->skbs);
		return -1;
	} else if (FUNC7(res == TX_QUEUED)) {
		FUNC1(tx->local->tx_handlers_queued);
		return -1;
	}

	return 0;
}