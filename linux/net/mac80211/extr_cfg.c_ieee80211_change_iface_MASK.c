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
struct wiphy {int dummy; } ;
struct vif_params {scalar_t__ use_4addr; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_6__ {scalar_t__ use_4addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  sta; } ;
struct TYPE_7__ {TYPE_2__ mgd; TYPE_1__ vlan; } ;
struct ieee80211_sub_if_data {TYPE_4__ vif; TYPE_3__ u; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int NL80211_IFTYPE_AP_VLAN ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 int NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 
 int FUNC3 (struct ieee80211_sub_if_data*,int) ; 
 int FUNC4 (struct ieee80211_sub_if_data*,struct vif_params*) ; 

__attribute__((used)) static int FUNC5(struct wiphy *wiphy,
				  struct net_device *dev,
				  enum nl80211_iftype type,
				  struct vif_params *params)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	int ret;

	ret = FUNC3(sdata, type);
	if (ret)
		return ret;

	if (type == NL80211_IFTYPE_AP_VLAN && params->use_4addr == 0) {
		FUNC1(sdata->u.vlan.sta, NULL);
		FUNC2(sdata);
	} else if (type == NL80211_IFTYPE_STATION && params->use_4addr >= 0) {
		sdata->u.mgd.use_4addr = params->use_4addr;
	}

	if (sdata->vif.type == NL80211_IFTYPE_MONITOR) {
		ret = FUNC4(sdata, params);
		if (ret)
			return ret;
	}

	return 0;
}