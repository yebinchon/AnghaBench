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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct cfg80211_nan_conf {int dummy; } ;
struct TYPE_2__ {int (* nan_change_conf ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cfg80211_nan_conf*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cfg80211_nan_conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_nan_conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,int) ; 

__attribute__((used)) static inline int FUNC5(struct ieee80211_local *local,
				       struct ieee80211_sub_if_data *sdata,
				       struct cfg80211_nan_conf *conf,
				       u32 changes)
{
	int ret;

	FUNC1();
	FUNC0(sdata);

	if (!local->ops->nan_change_conf)
		return -EOPNOTSUPP;

	FUNC3(local, sdata, conf, changes);
	ret = local->ops->nan_change_conf(&local->hw, &sdata->vif, conf,
					  changes);
	FUNC4(local, ret);

	return ret;
}