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
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ mntr; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  flags; TYPE_4__ vif; TYPE_2__ u; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_3__* ops; } ;
struct TYPE_7__ {int (* add_interface ) (int /*<<< orphan*/ *,TYPE_4__*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IEEE80211_SDATA_IN_DRIVER ; 
 int MONITOR_FLAG_ACTIVE ; 
 scalar_t__ NL80211_IFTYPE_AP_VLAN ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  WANT_MONITOR_VIF ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*,int) ; 

int FUNC6(struct ieee80211_local *local,
		      struct ieee80211_sub_if_data *sdata)
{
	int ret;

	FUNC2();

	if (FUNC0(sdata->vif.type == NL80211_IFTYPE_AP_VLAN ||
		    (sdata->vif.type == NL80211_IFTYPE_MONITOR &&
		     !FUNC1(&local->hw, WANT_MONITOR_VIF) &&
		     !(sdata->u.mntr.flags & MONITOR_FLAG_ACTIVE))))
		return -EINVAL;

	FUNC4(local, sdata);
	ret = local->ops->add_interface(&local->hw, &sdata->vif);
	FUNC5(local, ret);

	if (ret == 0)
		sdata->flags |= IEEE80211_SDATA_IN_DRIVER;

	return ret;
}