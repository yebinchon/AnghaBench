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
typedef  int /*<<< orphan*/  u64 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  mtx; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ROC_TYPE_NORMAL ; 
 struct ieee80211_sub_if_data* FUNC0 (struct wireless_dev*) ; 
 int FUNC1 (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_channel*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct wiphy *wiphy, struct wireless_dev *wdev,
				struct ieee80211_channel *chan,
				unsigned int duration, u64 *cookie)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(wdev);
	struct ieee80211_local *local = sdata->local;
	int ret;

	FUNC2(&local->mtx);
	ret = FUNC1(local, sdata, chan,
				       duration, cookie, NULL,
				       IEEE80211_ROC_TYPE_NORMAL);
	FUNC3(&local->mtx);

	return ret;
}