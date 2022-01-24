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
struct wiphy {int regulatory_flags; } ;
typedef  struct ieee80211_regdomain const ieee80211_regdomain ;
struct cfg80211_registered_device {struct ieee80211_regdomain const* requested_regd; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct ieee80211_regdomain const*) ; 
 int FUNC1 (struct ieee80211_regdomain const*) ; 
 int REGULATORY_WIPHY_SELF_MANAGED ; 
 scalar_t__ FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_regdomain const*) ; 
 struct ieee80211_regdomain const* FUNC7 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  reg_requests_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC10 (struct wiphy*) ; 

__attribute__((used)) static int FUNC11(struct wiphy *wiphy,
				       struct ieee80211_regdomain *rd)
{
	const struct ieee80211_regdomain *regd;
	const struct ieee80211_regdomain *prev_regd;
	struct cfg80211_registered_device *rdev;

	if (FUNC3(!wiphy || !rd))
		return -EINVAL;

	if (FUNC2(!(wiphy->regulatory_flags & REGULATORY_WIPHY_SELF_MANAGED),
		 "wiphy should have REGULATORY_WIPHY_SELF_MANAGED\n"))
		return -EPERM;

	if (FUNC2(!FUNC4(rd), "Invalid regulatory domain detected\n")) {
		FUNC6(rd);
		return -EINVAL;
	}

	regd = FUNC7(rd);
	if (FUNC0(regd))
		return FUNC1(regd);

	rdev = FUNC10(wiphy);

	FUNC8(&reg_requests_lock);
	prev_regd = rdev->requested_regd;
	rdev->requested_regd = regd;
	FUNC9(&reg_requests_lock);

	FUNC5(prev_regd);
	return 0;
}