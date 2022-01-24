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
struct wireless_dev {scalar_t__ iftype; scalar_t__ ssid_len; int /*<<< orphan*/  chandef; scalar_t__ beacon_interval; scalar_t__ conn_owner_nlportid; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  stop_ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_P2P_GO ; 
 int /*<<< orphan*/  cfg80211_disconnect_work ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_registered_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct cfg80211_registered_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct cfg80211_registered_device *rdev,
		       struct net_device *dev, bool notify)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	int err;

	FUNC0(wdev);

	if (!rdev->ops->stop_ap)
		return -EOPNOTSUPP;

	if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_AP &&
	    dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO)
		return -EOPNOTSUPP;

	if (!wdev->beacon_interval)
		return -ENOENT;

	err = FUNC5(rdev, dev);
	if (!err) {
		wdev->conn_owner_nlportid = 0;
		wdev->beacon_interval = 0;
		FUNC2(&wdev->chandef, 0, sizeof(wdev->chandef));
		wdev->ssid_len = 0;
		FUNC4(rdev, dev, NULL);
		if (notify)
			FUNC3(wdev);

		/* Should we apply the grace period during beaconing interface
		 * shutdown also?
		 */
		FUNC1(rdev);
	}

	FUNC6(&cfg80211_disconnect_work);

	return err;
}