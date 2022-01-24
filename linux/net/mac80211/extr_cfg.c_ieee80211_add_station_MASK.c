#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct station_parameters {int sta_flags_set; struct net_device* vlan; } ;
struct TYPE_8__ {int tdls; } ;
struct sta_info {TYPE_4__ sta; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  associated; } ;
struct TYPE_7__ {TYPE_2__ mgd; } ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  addr; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__ vif; } ;
struct ieee80211_local {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ieee80211_sub_if_data* FUNC1 (struct net_device*) ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_AP_VLAN ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  NL80211_STA_FLAG_TDLS_PEER ; 
 int /*<<< orphan*/  WLAN_STA_ASSOC ; 
 int /*<<< orphan*/  WLAN_STA_TDLS_PEER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct ieee80211_local*,struct sta_info*,struct station_parameters*) ; 
 struct sta_info* FUNC7 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_local*,struct sta_info*) ; 
 int FUNC9 (struct sta_info*) ; 
 scalar_t__ FUNC10 (struct sta_info*,int /*<<< orphan*/ ) ; 
 struct ieee80211_local* FUNC11 (struct wiphy*) ; 

__attribute__((used)) static int FUNC12(struct wiphy *wiphy, struct net_device *dev,
				 const u8 *mac,
				 struct station_parameters *params)
{
	struct ieee80211_local *local = FUNC11(wiphy);
	struct sta_info *sta;
	struct ieee80211_sub_if_data *sdata;
	int err;

	if (params->vlan) {
		sdata = FUNC1(params->vlan);

		if (sdata->vif.type != NL80211_IFTYPE_AP_VLAN &&
		    sdata->vif.type != NL80211_IFTYPE_AP)
			return -EINVAL;
	} else
		sdata = FUNC1(dev);

	if (FUNC2(mac, sdata->vif.addr))
		return -EINVAL;

	if (!FUNC3(mac))
		return -EINVAL;

	if (params->sta_flags_set & FUNC0(NL80211_STA_FLAG_TDLS_PEER) &&
	    sdata->vif.type == NL80211_IFTYPE_STATION &&
	    !sdata->u.mgd.associated)
		return -EINVAL;

	sta = FUNC7(sdata, mac, GFP_KERNEL);
	if (!sta)
		return -ENOMEM;

	if (params->sta_flags_set & FUNC0(NL80211_STA_FLAG_TDLS_PEER))
		sta->sta.tdls = true;

	err = FUNC6(local, sta, params);
	if (err) {
		FUNC8(local, sta);
		return err;
	}

	/*
	 * for TDLS and for unassociated station, rate control should be
	 * initialized only when rates are known and station is marked
	 * authorized/associated
	 */
	if (!FUNC10(sta, WLAN_STA_TDLS_PEER) &&
	    FUNC10(sta, WLAN_STA_ASSOC))
		FUNC4(sta);

	err = FUNC9(sta);
	if (err) {
		FUNC5();
		return err;
	}

	FUNC5();

	return 0;
}