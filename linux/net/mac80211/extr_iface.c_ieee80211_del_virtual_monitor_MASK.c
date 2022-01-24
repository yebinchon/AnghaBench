#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int /*<<< orphan*/  mtx; int /*<<< orphan*/  iflist_mtx; int /*<<< orphan*/  monitor_sdata; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WANT_MONITOR_VIF ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sub_if_data* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(struct ieee80211_local *local)
{
	struct ieee80211_sub_if_data *sdata;

	if (!FUNC3(&local->hw, WANT_MONITOR_VIF))
		return;

	FUNC0();

	FUNC7(&local->iflist_mtx);

	sdata = FUNC9(local->monitor_sdata,
					  FUNC6(&local->iflist_mtx));
	if (!sdata) {
		FUNC8(&local->iflist_mtx);
		return;
	}

	FUNC1(local->monitor_sdata, NULL);
	FUNC8(&local->iflist_mtx);

	FUNC10();

	FUNC7(&local->mtx);
	FUNC4(sdata);
	FUNC8(&local->mtx);

	FUNC2(local, sdata);

	FUNC5(sdata);
}