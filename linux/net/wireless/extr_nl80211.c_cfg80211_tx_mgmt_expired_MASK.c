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
typedef  int /*<<< orphan*/  u64 ;
struct wireless_dev {struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_CMD_FRAME_WAIT_CANCEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cfg80211_registered_device*,struct wireless_dev*,int /*<<< orphan*/ ,struct ieee80211_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wireless_dev*,int /*<<< orphan*/ ,struct ieee80211_channel*) ; 
 struct cfg80211_registered_device* FUNC2 (struct wiphy*) ; 

void FUNC3(struct wireless_dev *wdev, u64 cookie,
					struct ieee80211_channel *chan,
					gfp_t gfp)
{
	struct wiphy *wiphy = wdev->wiphy;
	struct cfg80211_registered_device *rdev = FUNC2(wiphy);

	FUNC1(wdev, cookie, chan);
	FUNC0(NL80211_CMD_FRAME_WAIT_CANCEL,
					  rdev, wdev, cookie, chan, 0, gfp);
}