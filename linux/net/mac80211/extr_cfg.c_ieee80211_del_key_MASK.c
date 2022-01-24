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
typedef  size_t u8 ;
struct wiphy {int dummy; } ;
struct sta_info {int /*<<< orphan*/ * gtk; int /*<<< orphan*/ * ptk; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; int /*<<< orphan*/ * keys; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  sta_mtx; int /*<<< orphan*/  key_mtx; } ;
struct ieee80211_key {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_key*,int) ; 
 struct ieee80211_key* FUNC2 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC5 (struct ieee80211_sub_if_data*,size_t const*) ; 

__attribute__((used)) static int FUNC6(struct wiphy *wiphy, struct net_device *dev,
			     u8 key_idx, bool pairwise, const u8 *mac_addr)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	struct sta_info *sta;
	struct ieee80211_key *key = NULL;
	int ret;

	FUNC3(&local->sta_mtx);
	FUNC3(&local->key_mtx);

	if (mac_addr) {
		ret = -ENOENT;

		sta = FUNC5(sdata, mac_addr);
		if (!sta)
			goto out_unlock;

		if (pairwise)
			key = FUNC2(local, sta->ptk[key_idx]);
		else
			key = FUNC2(local, sta->gtk[key_idx]);
	} else
		key = FUNC2(local, sdata->keys[key_idx]);

	if (!key) {
		ret = -ENOENT;
		goto out_unlock;
	}

	FUNC1(key, sdata->vif.type == NL80211_IFTYPE_STATION);

	ret = 0;
 out_unlock:
	FUNC4(&local->key_mtx);
	FUNC4(&local->sta_mtx);

	return ret;
}