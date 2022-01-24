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
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int /*<<< orphan*/  mtx; int /*<<< orphan*/  sched_scan_sdata; int /*<<< orphan*/  sched_scan_req; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  sched_scan_stop; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sub_if_data* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct ieee80211_local *local)
{
	struct ieee80211_sub_if_data *sched_scan_sdata;
	int ret = -ENOENT;

	FUNC3(&local->mtx);

	if (!local->ops->sched_scan_stop) {
		ret = -ENOTSUPP;
		goto out;
	}

	/* We don't want to restart sched scan anymore. */
	FUNC0(local->sched_scan_req, NULL);

	sched_scan_sdata = FUNC5(local->sched_scan_sdata,
						FUNC2(&local->mtx));
	if (sched_scan_sdata) {
		ret = FUNC1(local, sched_scan_sdata);
		if (!ret)
			FUNC0(local->sched_scan_sdata, NULL);
	}
out:
	FUNC4(&local->mtx);

	return ret;
}