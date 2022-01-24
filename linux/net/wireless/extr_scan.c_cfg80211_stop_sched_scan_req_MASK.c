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
struct cfg80211_sched_scan_request {int /*<<< orphan*/  reqid; int /*<<< orphan*/  dev; } ;
struct cfg80211_registered_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  NL80211_CMD_SCHED_SCAN_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_registered_device*,struct cfg80211_sched_scan_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_sched_scan_request*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cfg80211_registered_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct cfg80211_registered_device *rdev,
				 struct cfg80211_sched_scan_request *req,
				 bool driver_initiated)
{
	FUNC0();

	if (!driver_initiated) {
		int err = FUNC3(rdev, req->dev, req->reqid);
		if (err)
			return err;
	}

	FUNC2(req, NL80211_CMD_SCHED_SCAN_STOPPED);

	FUNC1(rdev, req);

	return 0;
}