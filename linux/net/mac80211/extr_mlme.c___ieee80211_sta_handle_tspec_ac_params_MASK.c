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
struct ieee80211_if_managed {int /*<<< orphan*/  tx_tspec_wk; struct ieee80211_sta_tx_tspec* tx_tspec; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int wmm_acm; int /*<<< orphan*/ * tx_conf; TYPE_1__ u; struct ieee80211_local* local; } ;
struct ieee80211_sta_tx_tspec {int action; unsigned long time_slice_start; int downgraded; scalar_t__ consumed_tx_time; scalar_t__ admitted_time; } ;
struct TYPE_4__ {int queues; } ;
struct ieee80211_local {TYPE_2__ hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ HZ ; 
 int IEEE80211_AC_BK ; 
 int IEEE80211_NUM_ACS ; 
#define  TX_TSPEC_ACTION_DOWNGRADE 130 
#define  TX_TSPEC_ACTION_NONE 129 
#define  TX_TSPEC_ACTION_STOP_DOWNGRADE 128 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,char*,int) ; 
 scalar_t__ FUNC4 (unsigned long,scalar_t__) ; 

__attribute__((used)) static bool
FUNC5(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	bool ret = false;
	int ac;

	if (local->hw.queues < IEEE80211_NUM_ACS)
		return false;

	for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
		struct ieee80211_sta_tx_tspec *tx_tspec = &ifmgd->tx_tspec[ac];
		int non_acm_ac;
		unsigned long now = jiffies;

		if (tx_tspec->action == TX_TSPEC_ACTION_NONE &&
		    tx_tspec->admitted_time &&
		    FUNC4(now, tx_tspec->time_slice_start + HZ)) {
			tx_tspec->consumed_tx_time = 0;
			tx_tspec->time_slice_start = now;

			if (tx_tspec->downgraded)
				tx_tspec->action =
					TX_TSPEC_ACTION_STOP_DOWNGRADE;
		}

		switch (tx_tspec->action) {
		case TX_TSPEC_ACTION_STOP_DOWNGRADE:
			/* take the original parameters */
			if (FUNC1(local, sdata, ac, &sdata->tx_conf[ac]))
				FUNC3(sdata,
					  "failed to set TX queue parameters for queue %d\n",
					  ac);
			tx_tspec->action = TX_TSPEC_ACTION_NONE;
			tx_tspec->downgraded = false;
			ret = true;
			break;
		case TX_TSPEC_ACTION_DOWNGRADE:
			if (FUNC4(now, tx_tspec->time_slice_start + HZ)) {
				tx_tspec->action = TX_TSPEC_ACTION_NONE;
				ret = true;
				break;
			}
			/* downgrade next lower non-ACM AC */
			for (non_acm_ac = ac + 1;
			     non_acm_ac < IEEE80211_NUM_ACS;
			     non_acm_ac++)
				if (!(sdata->wmm_acm & FUNC0(7 - 2 * non_acm_ac)))
					break;
			/* Usually the loop will result in using BK even if it
			 * requires admission control, but such a configuration
			 * makes no sense and we have to transmit somehow - the
			 * AC selection does the same thing.
			 * If we started out trying to downgrade from BK, then
			 * the extra condition here might be needed.
			 */
			if (non_acm_ac >= IEEE80211_NUM_ACS)
				non_acm_ac = IEEE80211_AC_BK;
			if (FUNC1(local, sdata, ac,
					&sdata->tx_conf[non_acm_ac]))
				FUNC3(sdata,
					  "failed to set TX queue parameters for queue %d\n",
					  ac);
			tx_tspec->action = TX_TSPEC_ACTION_NONE;
			ret = true;
			FUNC2(&ifmgd->tx_tspec_wk,
				tx_tspec->time_slice_start + HZ - now + 1);
			break;
		case TX_TSPEC_ACTION_NONE:
			/* nothing now */
			break;
		}
	}

	return ret;
}