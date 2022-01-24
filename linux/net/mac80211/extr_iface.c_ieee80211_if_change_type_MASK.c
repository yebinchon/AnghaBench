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
struct TYPE_3__ {int use_4addr; } ;
struct TYPE_4__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; int /*<<< orphan*/  vif; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int NL80211_IFTYPE_STATION ; 
 int FUNC1 (struct ieee80211_sub_if_data*,int) ; 
 scalar_t__ FUNC2 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct ieee80211_sub_if_data *sdata,
			     enum nl80211_iftype type)
{
	int ret;

	FUNC0();

	if (type == FUNC5(&sdata->vif))
		return 0;

	if (FUNC2(sdata)) {
		ret = FUNC1(sdata, type);
		if (ret)
			return ret;
	} else {
		/* Purge and reset type-dependent state. */
		FUNC4(sdata);
		FUNC3(sdata, type);
	}

	/* reset some values that shouldn't be kept across type changes */
	if (type == NL80211_IFTYPE_STATION)
		sdata->u.mgd.use_4addr = false;

	return 0;
}