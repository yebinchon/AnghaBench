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
struct TYPE_3__ {int /*<<< orphan*/  last_rate; } ;
struct sta_info {TYPE_2__* mesh; TYPE_1__ tx_stats; } ;
struct rate_info {int dummy; } ;
struct ieee80211_tx_status {struct ieee80211_tx_info* info; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_local {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_rate_avg; int /*<<< orphan*/  fail_avg; } ;

/* Variables and functions */
 int IEEE80211_TX_STAT_ACK ; 
 scalar_t__ LINK_FAIL_THRESH ; 
 int /*<<< orphan*/  FUNC0 (struct rate_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sta_info*,int /*<<< orphan*/ *,struct rate_info*) ; 

void FUNC6(struct ieee80211_local *local,
			      struct sta_info *sta,
			      struct ieee80211_tx_status *st)
{
	struct ieee80211_tx_info *txinfo = st->info;
	int failed;
	struct rate_info rinfo;

	failed = !(txinfo->flags & IEEE80211_TX_STAT_ACK);

	/* moving average, scaled to 100.
	 * feed failure as 100 and success as 0
	 */
	FUNC1(&sta->mesh->fail_avg, failed * 100);
	if (FUNC2(&sta->mesh->fail_avg) >
			LINK_FAIL_THRESH)
		FUNC4(sta);

	FUNC5(sta, &sta->tx_stats.last_rate, &rinfo);
	FUNC3(&sta->mesh->tx_rate_avg,
				  FUNC0(&rinfo));
}