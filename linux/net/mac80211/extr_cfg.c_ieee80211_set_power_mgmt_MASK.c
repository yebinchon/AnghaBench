#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int dummy; } ;
struct net_device {int /*<<< orphan*/  ieee80211_ptr; } ;
struct TYPE_5__ {int powersave; int /*<<< orphan*/  req_smps; } ;
struct TYPE_6__ {TYPE_2__ mgd; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__ vif; } ;
struct ieee80211_local {int dynamic_ps_forced_timeout; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IEEE80211_CONF_CHANGE_PS ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  SUPPORTS_DYNAMIC_PS ; 
 int /*<<< orphan*/  SUPPORTS_PS ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*) ; 
 struct ieee80211_local* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct wiphy *wiphy, struct net_device *dev,
				    bool enabled, int timeout)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = FUNC9(dev->ieee80211_ptr);

	if (sdata->vif.type != NL80211_IFTYPE_STATION)
		return -EOPNOTSUPP;

	if (!FUNC3(&local->hw, SUPPORTS_PS))
		return -EOPNOTSUPP;

	if (enabled == sdata->u.mgd.powersave &&
	    timeout == local->dynamic_ps_forced_timeout)
		return 0;

	sdata->u.mgd.powersave = enabled;
	local->dynamic_ps_forced_timeout = timeout;

	/* no change, but if automatic follow powersave */
	FUNC7(sdata);
	FUNC1(sdata, sdata->u.mgd.req_smps);
	FUNC8(sdata);

	if (FUNC3(&local->hw, SUPPORTS_DYNAMIC_PS))
		FUNC4(local, IEEE80211_CONF_CHANGE_PS);

	FUNC5(local);
	FUNC6(sdata);
	FUNC2(sdata);

	return 0;
}