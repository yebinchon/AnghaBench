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
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  beacon; } ;
struct TYPE_6__ {TYPE_2__ ap; } ;
struct TYPE_4__ {scalar_t__ csa_active; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__ vif; } ;
struct cfg80211_beacon_data {int dummy; } ;
struct beacon_data {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct ieee80211_sub_if_data*,struct cfg80211_beacon_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*) ; 
 struct beacon_data* FUNC4 (int /*<<< orphan*/ ,struct ieee80211_sub_if_data*) ; 

__attribute__((used)) static int FUNC5(struct wiphy *wiphy, struct net_device *dev,
				   struct cfg80211_beacon_data *params)
{
	struct ieee80211_sub_if_data *sdata;
	struct beacon_data *old;
	int err;

	sdata = FUNC0(dev);
	FUNC3(sdata);

	/* don't allow changing the beacon while CSA is in place - offset
	 * of channel switch counter may change
	 */
	if (sdata->vif.csa_active)
		return -EBUSY;

	old = FUNC4(sdata->u.ap.beacon, sdata);
	if (!old)
		return -ENOENT;

	err = FUNC1(sdata, params, NULL);
	if (err < 0)
		return err;
	FUNC2(sdata, err);
	return 0;
}