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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct sta_info {int /*<<< orphan*/  sta; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  sta_mtx; } ;

/* Variables and functions */
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  WLAN_STA_TDLS_OFF_CHANNEL ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC5 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (struct sta_info*,int /*<<< orphan*/ ) ; 

void
FUNC8(struct wiphy *wiphy,
				     struct net_device *dev,
				     const u8 *addr)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	struct sta_info *sta;

	FUNC3(&local->sta_mtx);
	sta = FUNC5(sdata, addr);
	if (!sta) {
		FUNC6(sdata,
			 "Invalid TDLS peer %pM for channel switch cancel\n",
			 addr);
		goto out;
	}

	if (!FUNC7(sta, WLAN_STA_TDLS_OFF_CHANNEL)) {
		FUNC6(sdata, "TDLS channel switch not initiated by %pM\n",
			 addr);
		goto out;
	}

	FUNC2(local, sdata, &sta->sta);
	FUNC1(sta, WLAN_STA_TDLS_OFF_CHANNEL);

out:
	FUNC4(&local->sta_mtx);
}