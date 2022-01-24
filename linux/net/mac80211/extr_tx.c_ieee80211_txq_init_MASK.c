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
struct TYPE_8__ {int tid; TYPE_3__* sta; int /*<<< orphan*/  ac; TYPE_1__* vif; } ;
struct txq_info {TYPE_4__ txq; int /*<<< orphan*/  schedule_order; int /*<<< orphan*/  frags; int /*<<< orphan*/  cstats; int /*<<< orphan*/  def_cvars; int /*<<< orphan*/  def_flow; int /*<<< orphan*/  tin; } ;
struct TYPE_7__ {TYPE_4__** txq; } ;
struct sta_info {TYPE_3__ sta; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_4__* txq; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; TYPE_1__ vif; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFF_MMPDU_TXQ ; 
 int /*<<< orphan*/  IEEE80211_AC_BE ; 
 int /*<<< orphan*/  IEEE80211_AC_VO ; 
 int IEEE80211_NUM_TIDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  STA_MMPDU_TXQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC8(struct ieee80211_sub_if_data *sdata,
			struct sta_info *sta,
			struct txq_info *txqi, int tid)
{
	FUNC5(&txqi->tin);
	FUNC4(&txqi->def_flow);
	FUNC3(&txqi->def_cvars);
	FUNC2(&txqi->cstats);
	FUNC1(&txqi->frags);
	FUNC0(&txqi->schedule_order);

	txqi->txq.vif = &sdata->vif;

	if (!sta) {
		sdata->vif.txq = &txqi->txq;
		txqi->txq.tid = 0;
		txqi->txq.ac = IEEE80211_AC_BE;

		return;
	}

	if (tid == IEEE80211_NUM_TIDS) {
		if (sdata->vif.type == NL80211_IFTYPE_STATION) {
			/* Drivers need to opt in to the management MPDU TXQ */
			if (!FUNC7(&sdata->local->hw,
						STA_MMPDU_TXQ))
				return;
		} else if (!FUNC7(&sdata->local->hw,
					       BUFF_MMPDU_TXQ)) {
			/* Drivers need to opt in to the bufferable MMPDU TXQ */
			return;
		}
		txqi->txq.ac = IEEE80211_AC_VO;
	} else {
		txqi->txq.ac = FUNC6(tid);
	}

	txqi->txq.sta = &sta->sta;
	txqi->txq.tid = tid;
	sta->sta.txq[tid] = &txqi->txq;
}