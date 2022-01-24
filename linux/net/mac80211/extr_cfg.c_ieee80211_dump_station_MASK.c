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
struct wiphy {int dummy; } ;
struct station_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct sta_info {TYPE_1__ sta; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  sta_mtx; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC4 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sta_info*,struct station_info*,int) ; 

__attribute__((used)) static int FUNC6(struct wiphy *wiphy, struct net_device *dev,
				  int idx, u8 *mac, struct station_info *sinfo)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	struct sta_info *sta;
	int ret = -ENOENT;

	FUNC2(&local->sta_mtx);

	sta = FUNC4(sdata, idx);
	if (sta) {
		ret = 0;
		FUNC1(mac, sta->sta.addr, ETH_ALEN);
		FUNC5(sta, sinfo, true);
	}

	FUNC3(&local->sta_mtx);

	return ret;
}