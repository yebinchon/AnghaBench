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
struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_registered_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wiphy*,int /*<<< orphan*/ ) ; 
 struct cfg80211_registered_device* FUNC3 (struct wiphy*) ; 

void FUNC4(struct wiphy *wiphy, u64 reqid)
{
	struct cfg80211_registered_device *rdev = FUNC3(wiphy);

	FUNC0();

	FUNC2(wiphy, reqid);

	FUNC1(rdev, reqid, true);
}