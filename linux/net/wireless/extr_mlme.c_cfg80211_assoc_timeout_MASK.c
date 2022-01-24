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
struct wireless_dev {struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
struct cfg80211_bss {int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cfg80211_bss*) ; 
 int /*<<< orphan*/  FUNC1 (struct wiphy*,struct cfg80211_bss*) ; 
 int /*<<< orphan*/  FUNC2 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct cfg80211_registered_device* FUNC6 (struct wiphy*) ; 

void FUNC7(struct net_device *dev, struct cfg80211_bss *bss)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct wiphy *wiphy = wdev->wiphy;
	struct cfg80211_registered_device *rdev = FUNC6(wiphy);

	FUNC5(dev, bss->bssid);

	FUNC4(rdev, dev, bss->bssid, GFP_KERNEL);
	FUNC2(wdev);

	FUNC3(FUNC0(bss));
	FUNC1(wiphy, bss);
}