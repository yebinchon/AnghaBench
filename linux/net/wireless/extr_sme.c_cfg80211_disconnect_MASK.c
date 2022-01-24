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
typedef  int /*<<< orphan*/  u16 ;
struct wireless_dev {scalar_t__ ssid_len; int /*<<< orphan*/  current_bss; scalar_t__ conn; scalar_t__ conn_owner_nlportid; int /*<<< orphan*/ * connect_keys; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  disconnect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_registered_device*,struct net_device*) ; 
 int FUNC2 (struct wireless_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/ ) ; 

int FUNC5(struct cfg80211_registered_device *rdev,
			struct net_device *dev, u16 reason, bool wextev)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	int err = 0;

	FUNC0(wdev);

	FUNC3(wdev->connect_keys);
	wdev->connect_keys = NULL;

	wdev->conn_owner_nlportid = 0;

	if (wdev->conn)
		err = FUNC2(wdev, reason);
	else if (!rdev->ops->disconnect)
		FUNC1(rdev, dev);
	else if (wdev->ssid_len)
		err = FUNC4(rdev, dev, reason);

	/*
	 * Clear ssid_len unless we actually were fully connected,
	 * in which case cfg80211_disconnected() will take care of
	 * this later.
	 */
	if (!wdev->current_bss)
		wdev->ssid_len = 0;

	return err;
}