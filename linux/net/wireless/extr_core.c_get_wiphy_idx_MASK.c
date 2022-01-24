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
struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int wiphy_idx; } ;

/* Variables and functions */
 struct cfg80211_registered_device* FUNC0 (struct wiphy*) ; 

int FUNC1(struct wiphy *wiphy)
{
	struct cfg80211_registered_device *rdev = FUNC0(wiphy);

	return rdev->wiphy_idx;
}