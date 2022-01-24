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
struct wireless_dev {scalar_t__ iftype; int is_running; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  opencount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ NL80211_IFTYPE_NAN ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_registered_device*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct wireless_dev*) ; 

void FUNC4(struct cfg80211_registered_device *rdev,
		       struct wireless_dev *wdev)
{
	FUNC0();

	if (FUNC1(wdev->iftype != NL80211_IFTYPE_NAN))
		return;

	if (!FUNC3(wdev))
		return;

	FUNC2(rdev, wdev);
	wdev->is_running = false;

	rdev->opencount--;
}