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
struct wireless_dev {scalar_t__ iftype; int /*<<< orphan*/  chandef; scalar_t__ beacon_interval; scalar_t__ mesh_id_len; scalar_t__ conn_owner_nlportid; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  leave_mesh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_registered_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct cfg80211_registered_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/ *) ; 

int FUNC5(struct cfg80211_registered_device *rdev,
			  struct net_device *dev)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	int err;

	FUNC0(wdev);

	if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_MESH_POINT)
		return -EOPNOTSUPP;

	if (!rdev->ops->leave_mesh)
		return -EOPNOTSUPP;

	if (!wdev->mesh_id_len)
		return -ENOTCONN;

	err = FUNC3(rdev, dev);
	if (!err) {
		wdev->conn_owner_nlportid = 0;
		wdev->mesh_id_len = 0;
		wdev->beacon_interval = 0;
		FUNC2(&wdev->chandef, 0, sizeof(wdev->chandef));
		FUNC4(rdev, dev, NULL);
		FUNC1(rdev);
	}

	return err;
}