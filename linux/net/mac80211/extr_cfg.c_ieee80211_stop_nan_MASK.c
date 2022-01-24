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
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  local; } ;

/* Variables and functions */
 struct ieee80211_sub_if_data* FUNC0 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 

__attribute__((used)) static void FUNC3(struct wiphy *wiphy,
			       struct wireless_dev *wdev)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(wdev);

	FUNC1(sdata->local, sdata);
	FUNC2(sdata);
}