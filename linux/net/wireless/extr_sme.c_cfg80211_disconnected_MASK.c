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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wireless_dev {int /*<<< orphan*/  event_lock; int /*<<< orphan*/  event_list; int /*<<< orphan*/  wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  event_work; } ;
struct TYPE_2__ {size_t ie_len; int locally_generated; int /*<<< orphan*/  reason; int /*<<< orphan*/ * ie; } ;
struct cfg80211_event {int /*<<< orphan*/  list; TYPE_1__ dc; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_DISCONNECTED ; 
 int /*<<< orphan*/  cfg80211_wq ; 
 struct cfg80211_event* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cfg80211_registered_device* FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct net_device *dev, u16 reason,
			   const u8 *ie, size_t ie_len,
			   bool locally_generated, gfp_t gfp)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC6(wdev->wiphy);
	struct cfg80211_event *ev;
	unsigned long flags;

	ev = FUNC0(sizeof(*ev) + ie_len, gfp);
	if (!ev)
		return;

	ev->type = EVENT_DISCONNECTED;
	ev->dc.ie = ((u8 *)ev) + sizeof(*ev);
	ev->dc.ie_len = ie_len;
	FUNC2((void *)ev->dc.ie, ie, ie_len);
	ev->dc.reason = reason;
	ev->dc.locally_generated = locally_generated;

	FUNC4(&wdev->event_lock, flags);
	FUNC1(&ev->list, &wdev->event_list);
	FUNC5(&wdev->event_lock, flags);
	FUNC3(cfg80211_wq, &rdev->event_work);
}