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
struct wireless_dev {int /*<<< orphan*/  event_lock; int /*<<< orphan*/  event_list; } ;
struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  event_work; } ;
struct cfg80211_event {int /*<<< orphan*/  list; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_STOPPED ; 
 int /*<<< orphan*/  cfg80211_wq ; 
 struct cfg80211_event* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct wiphy*,struct wireless_dev*) ; 
 struct cfg80211_registered_device* FUNC6 (struct wiphy*) ; 

void FUNC7(struct wiphy *wiphy, struct wireless_dev *wdev,
			 gfp_t gfp)
{
	struct cfg80211_registered_device *rdev = FUNC6(wiphy);
	struct cfg80211_event *ev;
	unsigned long flags;

	FUNC5(wiphy, wdev);

	ev = FUNC0(sizeof(*ev), gfp);
	if (!ev)
		return;

	ev->type = EVENT_STOPPED;

	FUNC3(&wdev->event_lock, flags);
	FUNC1(&ev->list, &wdev->event_list);
	FUNC4(&wdev->event_lock, flags);
	FUNC2(cfg80211_wq, &rdev->event_work);
}