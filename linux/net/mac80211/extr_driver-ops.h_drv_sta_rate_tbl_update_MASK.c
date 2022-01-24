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
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sta_rate_tbl_update ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ieee80211_sta*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*) ; 
 struct ieee80211_sub_if_data* FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_sta*) ; 

__attribute__((used)) static inline void FUNC5(struct ieee80211_local *local,
					   struct ieee80211_sub_if_data *sdata,
					   struct ieee80211_sta *sta)
{
	sdata = FUNC1(sdata);
	if (!FUNC0(sdata))
		return;

	FUNC4(local, sdata, sta);
	if (local->ops->sta_rate_tbl_update)
		local->ops->sta_rate_tbl_update(&local->hw, &sdata->vif, sta);

	FUNC3(local);
}