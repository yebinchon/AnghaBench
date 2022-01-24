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
struct TYPE_5__ {scalar_t__ sta; } ;
struct TYPE_4__ {scalar_t__ backlog_packets; } ;
struct txq_info {int /*<<< orphan*/  schedule_order; TYPE_2__ txq; TYPE_1__ tin; int /*<<< orphan*/  frags; } ;
struct ieee80211_txq {size_t ac; } ;
struct TYPE_6__ {int /*<<< orphan*/  wiphy; } ;
struct ieee80211_local {int /*<<< orphan*/ * active_txq_lock; int /*<<< orphan*/ * active_txqs; TYPE_3__ hw; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_EXT_FEATURE_AIRTIME_FAIRNESS ; 
 struct ieee80211_local* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct txq_info* FUNC7 (struct ieee80211_txq*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct ieee80211_hw *hw,
			      struct ieee80211_txq *txq,
			      bool force)
{
	struct ieee80211_local *local = FUNC0(hw);
	struct txq_info *txqi = FUNC7(txq);

	FUNC5(&local->active_txq_lock[txq->ac]);

	if (FUNC3(&txqi->schedule_order) &&
	    (force || !FUNC4(&txqi->frags) ||
	     txqi->tin.backlog_packets)) {
		/* If airtime accounting is active, always enqueue STAs at the
		 * head of the list to ensure that they only get moved to the
		 * back by the airtime DRR scheduler once they have a negative
		 * deficit. A station that already has a negative deficit will
		 * get immediately moved to the back of the list on the next
		 * call to ieee80211_next_txq().
		 */
		if (txqi->txq.sta &&
		    FUNC8(local->hw.wiphy,
					    NL80211_EXT_FEATURE_AIRTIME_FAIRNESS))
			FUNC1(&txqi->schedule_order,
				 &local->active_txqs[txq->ac]);
		else
			FUNC2(&txqi->schedule_order,
				      &local->active_txqs[txq->ac]);
	}

	FUNC6(&local->active_txq_lock[txq->ac]);
}