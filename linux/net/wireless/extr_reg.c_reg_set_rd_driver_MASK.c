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
struct wiphy {int /*<<< orphan*/  regd; } ;
struct regulatory_request {int /*<<< orphan*/  intersect; int /*<<< orphan*/  wiphy_idx; } ;
struct ieee80211_regdomain {int /*<<< orphan*/ * alpha2; } ;

/* Variables and functions */
 int EALREADY ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct ieee80211_regdomain const*) ; 
 int FUNC1 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct ieee80211_regdomain* FUNC3 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_regdomain const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_regdomain const*) ; 
 struct ieee80211_regdomain* FUNC10 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct ieee80211_regdomain* FUNC12 (struct ieee80211_regdomain const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,struct ieee80211_regdomain const*) ; 
 struct wiphy* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(const struct ieee80211_regdomain *rd,
			     struct regulatory_request *driver_request)
{
	const struct ieee80211_regdomain *regd;
	const struct ieee80211_regdomain *intersected_rd = NULL;
	const struct ieee80211_regdomain *tmp;
	struct wiphy *request_wiphy;

	if (FUNC5(rd->alpha2))
		return -EINVAL;

	if (!FUNC11(rd->alpha2))
		return -EALREADY;

	if (!FUNC4(rd)) {
		FUNC6("Invalid regulatory domain detected: %c%c\n",
		       rd->alpha2[0], rd->alpha2[1]);
		FUNC7(rd);
		return -EINVAL;
	}

	request_wiphy = FUNC14(driver_request->wiphy_idx);
	if (!request_wiphy)
		return -ENODEV;

	if (!driver_request->intersect) {
		if (request_wiphy->regd)
			return -EALREADY;

		regd = FUNC10(rd);
		if (FUNC0(regd))
			return FUNC1(regd);

		FUNC8(request_wiphy->regd, regd);
		FUNC13(false, rd);
		return 0;
	}

	intersected_rd = FUNC12(rd, FUNC2());
	if (!intersected_rd)
		return -EINVAL;

	/*
	 * We can trash what CRDA provided now.
	 * However if a driver requested this specific regulatory
	 * domain we keep it for its private use
	 */
	tmp = FUNC3(request_wiphy);
	FUNC8(request_wiphy->regd, rd);
	FUNC9(tmp);

	rd = NULL;

	FUNC13(false, intersected_rd);

	return 0;
}