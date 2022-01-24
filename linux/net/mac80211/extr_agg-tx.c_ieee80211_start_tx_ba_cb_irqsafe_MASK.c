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
typedef  int /*<<< orphan*/  u16 ;
struct tid_ampdu_tx {int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct sta_info {TYPE_1__ ampdu_mlme; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  HT_AGG_STATE_START_CB ; 
 struct tid_ampdu_tx* FUNC0 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,struct sta_info**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct ieee80211_sub_if_data* FUNC6 (struct ieee80211_vif*) ; 

void FUNC7(struct ieee80211_vif *vif,
				      const u8 *ra, u16 tid)
{
	struct ieee80211_sub_if_data *sdata = FUNC6(vif);
	struct ieee80211_local *local = sdata->local;
	struct sta_info *sta;
	struct tid_ampdu_tx *tid_tx;

	FUNC5(sdata, ra, tid);

	FUNC2();
	tid_tx = FUNC0(sdata, ra, tid, &sta);
	if (!tid_tx)
		goto out;

	FUNC4(HT_AGG_STATE_START_CB, &tid_tx->state);
	FUNC1(&local->hw, &sta->ampdu_mlme.work);
 out:
	FUNC3();
}