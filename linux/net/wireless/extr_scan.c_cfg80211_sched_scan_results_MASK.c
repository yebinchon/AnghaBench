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
typedef  int /*<<< orphan*/  u64 ;
struct wiphy {int dummy; } ;
struct cfg80211_sched_scan_request {int report_results; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  sched_scan_res_wk; } ;

/* Variables and functions */
 struct cfg80211_sched_scan_request* FUNC0 (struct cfg80211_registered_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfg80211_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct wiphy*,int /*<<< orphan*/ ) ; 
 struct cfg80211_registered_device* FUNC5 (struct wiphy*) ; 

void FUNC6(struct wiphy *wiphy, u64 reqid)
{
	struct cfg80211_registered_device *rdev = FUNC5(wiphy);
	struct cfg80211_sched_scan_request *request;

	FUNC4(wiphy, reqid);
	/* ignore if we're not scanning */

	FUNC2();
	request = FUNC0(rdev, reqid);
	if (request) {
		request->report_results = true;
		FUNC1(cfg80211_wq, &rdev->sched_scan_res_wk);
	}
	FUNC3();
}