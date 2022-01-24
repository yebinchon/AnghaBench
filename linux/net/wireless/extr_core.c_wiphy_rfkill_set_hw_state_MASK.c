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
struct cfg80211_registered_device {int /*<<< orphan*/  rfkill_block; int /*<<< orphan*/  rfkill; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC2 (struct wiphy*) ; 

void FUNC3(struct wiphy *wiphy, bool blocked)
{
	struct cfg80211_registered_device *rdev = FUNC2(wiphy);

	if (FUNC0(rdev->rfkill, blocked))
		FUNC1(&rdev->rfkill_block);
}