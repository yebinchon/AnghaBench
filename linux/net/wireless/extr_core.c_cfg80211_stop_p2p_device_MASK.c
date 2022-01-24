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
struct wireless_dev {scalar_t__ iftype; int is_running; } ;
struct cfg80211_registered_device {TYPE_2__* scan_req; int /*<<< orphan*/  opencount; } ;
struct TYPE_3__ {int aborted; } ;
struct TYPE_4__ {TYPE_1__ info; int /*<<< orphan*/  notified; struct wireless_dev* wdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_registered_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cfg80211_registered_device*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct wireless_dev*) ; 

void FUNC5(struct cfg80211_registered_device *rdev,
			      struct wireless_dev *wdev)
{
	FUNC0();

	if (FUNC1(wdev->iftype != NL80211_IFTYPE_P2P_DEVICE))
		return;

	if (!FUNC4(wdev))
		return;

	FUNC3(rdev, wdev);
	wdev->is_running = false;

	rdev->opencount--;

	if (rdev->scan_req && rdev->scan_req->wdev == wdev) {
		if (FUNC1(!rdev->scan_req->notified))
			rdev->scan_req->info.aborted = true;
		FUNC2(rdev, false);
	}
}