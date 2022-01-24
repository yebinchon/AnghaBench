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
typedef  int /*<<< orphan*/  u32 ;
struct wiphy {int dummy; } ;
struct sta_info {int /*<<< orphan*/  sta; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  sta_mtx; } ;
struct cfg80211_chan_def {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOTSUPP ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  WLAN_STA_TDLS_CHAN_SWITCH ; 
 int /*<<< orphan*/  WLAN_STA_TDLS_OFF_CHANNEL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cfg80211_chan_def*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct sta_info*,int /*<<< orphan*/ ,struct cfg80211_chan_def*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sta_info*,int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC7 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (struct sta_info*,int /*<<< orphan*/ ) ; 

int
FUNC10(struct wiphy *wiphy, struct net_device *dev,
			      const u8 *addr, u8 oper_class,
			      struct cfg80211_chan_def *chandef)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	struct sta_info *sta;
	struct sk_buff *skb = NULL;
	u32 ch_sw_tm_ie;
	int ret;

	FUNC4(&local->sta_mtx);
	sta = FUNC7(sdata, addr);
	if (!sta) {
		FUNC8(sdata,
			 "Invalid TDLS peer %pM for channel switch request\n",
			 addr);
		ret = -ENOENT;
		goto out;
	}

	if (!FUNC9(sta, WLAN_STA_TDLS_CHAN_SWITCH)) {
		FUNC8(sdata, "TDLS channel switch unsupported by %pM\n",
			 addr);
		ret = -ENOTSUPP;
		goto out;
	}

	skb = FUNC3(sta, oper_class, chandef,
					    &ch_sw_tm_ie);
	if (!skb) {
		ret = -ENOENT;
		goto out;
	}

	ret = FUNC2(local, sdata, &sta->sta, oper_class,
				      chandef, skb, ch_sw_tm_ie);
	if (!ret)
		FUNC6(sta, WLAN_STA_TDLS_OFF_CHANNEL);

out:
	FUNC5(&local->sta_mtx);
	FUNC1(skb);
	return ret;
}