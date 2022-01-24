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
typedef  int /*<<< orphan*/  u8 ;
struct wireless_dev {struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_CMD_CH_SWITCH_STARTED_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_chan_def*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct cfg80211_chan_def*) ; 
 struct cfg80211_registered_device* FUNC2 (struct wiphy*) ; 

void FUNC3(struct net_device *dev,
				       struct cfg80211_chan_def *chandef,
				       u8 count)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct wiphy *wiphy = wdev->wiphy;
	struct cfg80211_registered_device *rdev = FUNC2(wiphy);

	FUNC1(dev, chandef);

	FUNC0(rdev, dev, chandef, GFP_KERNEL,
				 NL80211_CMD_CH_SWITCH_STARTED_NOTIFY, count);
}