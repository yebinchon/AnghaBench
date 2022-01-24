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
struct wireless_dev {TYPE_1__* conn; int /*<<< orphan*/  wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  conn_work; int /*<<< orphan*/  wiphy; } ;
struct cfg80211_bss {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 scalar_t__ CFG80211_CONN_SCANNING ; 
 scalar_t__ CFG80211_CONN_SCAN_AGAIN ; 
 struct cfg80211_bss* FUNC1 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cfg80211_bss*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC4(wdev->wiphy);
	struct cfg80211_bss *bss;

	FUNC0(wdev);

	if (!wdev->conn)
		return;

	if (wdev->conn->state != CFG80211_CONN_SCANNING &&
	    wdev->conn->state != CFG80211_CONN_SCAN_AGAIN)
		return;

	bss = FUNC1(wdev);
	if (bss)
		FUNC2(&rdev->wiphy, bss);
	else
		FUNC3(&rdev->conn_work);
}