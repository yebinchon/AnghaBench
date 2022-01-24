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
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_2__ {int (* change_interface ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ;} ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,int) ; 

int FUNC5(struct ieee80211_local *local,
			 struct ieee80211_sub_if_data *sdata,
			 enum nl80211_iftype type, bool p2p)
{
	int ret;

	FUNC1();

	if (!FUNC0(sdata))
		return -EIO;

	FUNC3(local, sdata, type, p2p);
	ret = local->ops->change_interface(&local->hw, &sdata->vif, type, p2p);
	FUNC4(local, ret);
	return ret;
}