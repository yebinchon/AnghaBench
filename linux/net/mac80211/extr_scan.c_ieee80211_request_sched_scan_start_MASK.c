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
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  mtx; int /*<<< orphan*/  sched_scan_sdata; } ;
struct cfg80211_sched_scan_request {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct ieee80211_sub_if_data*,struct cfg80211_sched_scan_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct ieee80211_sub_if_data *sdata,
				       struct cfg80211_sched_scan_request *req)
{
	struct ieee80211_local *local = sdata->local;
	int ret;

	FUNC1(&local->mtx);

	if (FUNC3(local->sched_scan_sdata)) {
		FUNC2(&local->mtx);
		return -EBUSY;
	}

	ret = FUNC0(sdata, req);

	FUNC2(&local->mtx);
	return ret;
}