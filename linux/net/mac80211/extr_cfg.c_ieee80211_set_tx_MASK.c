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
typedef  size_t u8 ;
struct sta_info {size_t ptk_idx; int /*<<< orphan*/ * ptk; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct TYPE_4__ {int /*<<< orphan*/  wiphy; } ;
struct ieee80211_local {int /*<<< orphan*/  key_mtx; TYPE_2__ hw; } ;
struct TYPE_3__ {int flags; } ;
struct ieee80211_key {TYPE_1__ conf; } ;

/* Variables and functions */
 int EINVAL ; 
 int IEEE80211_KEY_FLAG_NO_AUTO_TX ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_EXT_KEY_ID ; 
 int FUNC0 (struct ieee80211_key*) ; 
 struct ieee80211_key* FUNC1 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC4 (struct ieee80211_sub_if_data*,size_t const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_sub_if_data *sdata,
			    const u8 *mac_addr, u8 key_idx)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_key *key;
	struct sta_info *sta;
	int ret = -EINVAL;

	if (!FUNC5(local->hw.wiphy,
				     NL80211_EXT_FEATURE_EXT_KEY_ID))
		return -EINVAL;

	sta = FUNC4(sdata, mac_addr);

	if (!sta)
		return -EINVAL;

	if (sta->ptk_idx == key_idx)
		return 0;

	FUNC2(&local->key_mtx);
	key = FUNC1(local, sta->ptk[key_idx]);

	if (key && key->conf.flags & IEEE80211_KEY_FLAG_NO_AUTO_TX)
		ret = FUNC0(key);

	FUNC3(&local->key_mtx);
	return ret;
}