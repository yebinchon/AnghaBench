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
struct TYPE_2__ {int /*<<< orphan*/  (* sta_remove ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ieee80211_sta*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*) ; 
 struct ieee80211_sub_if_data* FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_sta*) ; 

__attribute__((used)) static inline void FUNC6(struct ieee80211_local *local,
				  struct ieee80211_sub_if_data *sdata,
				  struct ieee80211_sta *sta)
{
	FUNC2();

	sdata = FUNC1(sdata);
	if (!FUNC0(sdata))
		return;

	FUNC5(local, sdata, sta);
	if (local->ops->sta_remove)
		local->ops->sta_remove(&local->hw, &sdata->vif, sta);

	FUNC4(local);
}