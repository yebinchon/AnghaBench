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
struct ieee80211_scan_ies {int dummy; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct cfg80211_sched_scan_request {int dummy; } ;
struct TYPE_2__ {int (* sched_scan_start ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cfg80211_sched_scan_request*,struct ieee80211_scan_ies*) ;} ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cfg80211_sched_scan_request*,struct ieee80211_scan_ies*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 

__attribute__((used)) static inline int
FUNC5(struct ieee80211_local *local,
		     struct ieee80211_sub_if_data *sdata,
		     struct cfg80211_sched_scan_request *req,
		     struct ieee80211_scan_ies *ies)
{
	int ret;

	FUNC1();

	if (!FUNC0(sdata))
		return -EIO;

	FUNC4(local, sdata);
	ret = local->ops->sched_scan_start(&local->hw, &sdata->vif,
					      req, ies);
	FUNC3(local, ret);
	return ret;
}