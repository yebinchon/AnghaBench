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
struct wireless_dev {scalar_t__ conn_owner_nlportid; int /*<<< orphan*/  ssid_len; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int ENOLINK ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int FUNC2 (struct cfg80211_registered_device*,struct net_device*) ; 

int FUNC3(struct cfg80211_registered_device *rdev,
			  struct net_device *dev, bool nowext)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	int err;

	FUNC0(wdev);

	if (!wdev->ssid_len)
		return -ENOLINK;

	err = FUNC2(rdev, dev);

	if (err)
		return err;

	wdev->conn_owner_nlportid = 0;
	FUNC1(dev, nowext);

	return 0;
}