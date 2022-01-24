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
struct wireless_dev {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cfg80211_registered_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct wireless_dev*) ; 

int FUNC3(struct cfg80211_registered_device *rdev,
			struct net_device *dev)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	int err;

	FUNC1(wdev);
	err = FUNC0(rdev, dev);
	FUNC2(wdev);

	return err;
}