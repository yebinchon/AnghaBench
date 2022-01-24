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
struct regulatory_request {scalar_t__ intersect; int /*<<< orphan*/  wiphy_idx; } ;
struct ieee80211_regdomain {int /*<<< orphan*/ * alpha2; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct ieee80211_regdomain const*) ; 
 struct wiphy* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const struct ieee80211_regdomain *rd,
				 struct regulatory_request *country_ie_request)
{
	struct wiphy *request_wiphy;

	if (!FUNC0(rd->alpha2) && !FUNC1(rd->alpha2) &&
	    !FUNC2(rd->alpha2))
		return -EINVAL;

	/*
	 * Lets only bother proceeding on the same alpha2 if the current
	 * rd is non static (it means CRDA was present and was used last)
	 * and the pending request came in from a country IE
	 */

	if (!FUNC3(rd)) {
		FUNC4("Invalid regulatory domain detected: %c%c\n",
		       rd->alpha2[0], rd->alpha2[1]);
		FUNC5(rd);
		return -EINVAL;
	}

	request_wiphy = FUNC7(country_ie_request->wiphy_idx);
	if (!request_wiphy)
		return -ENODEV;

	if (country_ie_request->intersect)
		return -EINVAL;

	FUNC6(false, rd);
	return 0;
}