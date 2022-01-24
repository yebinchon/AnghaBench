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
struct wireless_dev {int /*<<< orphan*/  mgmt_registrations_lock; int /*<<< orphan*/  mgmt_registrations; int /*<<< orphan*/  wiphy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  mlme_unreg_lock; int /*<<< orphan*/  mlme_unreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfg80211_registered_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct wireless_dev *wdev)
{
	struct cfg80211_registered_device *rdev = FUNC6(wdev->wiphy);

	FUNC3(&wdev->mgmt_registrations_lock);
	FUNC2(&rdev->mlme_unreg_lock);
	FUNC1(&wdev->mgmt_registrations, &rdev->mlme_unreg);
	FUNC4(&rdev->mlme_unreg_lock);
	FUNC5(&wdev->mgmt_registrations_lock);

	FUNC0(rdev);
}