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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  work; int /*<<< orphan*/  tid_rx_manage_offl; } ;
struct sta_info {TYPE_1__ ampdu_mlme; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC4 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*) ; 
 struct ieee80211_sub_if_data* FUNC5 (struct ieee80211_vif*) ; 

void FUNC6(struct ieee80211_vif *vif,
				 const u8 *addr, unsigned int tid)
{
	struct ieee80211_sub_if_data *sdata = FUNC5(vif);
	struct ieee80211_local *local = sdata->local;
	struct sta_info *sta;

	FUNC1();
	sta = FUNC4(sdata, addr);
	if (!sta)
		goto unlock;

	FUNC3(tid, sta->ampdu_mlme.tid_rx_manage_offl);
	FUNC0(&local->hw, &sta->ampdu_mlme.work);
 unlock:
	FUNC2();
}