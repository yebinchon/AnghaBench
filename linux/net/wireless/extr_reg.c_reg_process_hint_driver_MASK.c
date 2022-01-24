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
struct regulatory_request {int intersect; int processed; } ;
struct ieee80211_regdomain {int dummy; } ;
typedef  enum reg_request_treatment { ____Placeholder_reg_request_treatment } reg_request_treatment ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_regdomain const*) ; 
#define  REG_REQ_ALREADY_SET 131 
#define  REG_REQ_IGNORE 130 
#define  REG_REQ_INTERSECT 129 
#define  REG_REQ_OK 128 
 int FUNC1 (struct regulatory_request*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct ieee80211_regdomain* FUNC3 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC4 (struct regulatory_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_regdomain const*) ; 
 struct ieee80211_regdomain* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct regulatory_request*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct regulatory_request*) ; 

__attribute__((used)) static enum reg_request_treatment
FUNC11(struct wiphy *wiphy,
			struct regulatory_request *driver_request)
{
	const struct ieee80211_regdomain *regd, *tmp;
	enum reg_request_treatment treatment;

	treatment = FUNC1(driver_request);

	switch (treatment) {
	case REG_REQ_OK:
		break;
	case REG_REQ_IGNORE:
		return REG_REQ_IGNORE;
	case REG_REQ_INTERSECT:
	case REG_REQ_ALREADY_SET:
		regd = FUNC7(FUNC2());
		if (FUNC0(regd))
			return REG_REQ_IGNORE;

		tmp = FUNC3(wiphy);
		FUNC5(wiphy->regd, regd);
		FUNC6(tmp);
	}


	driver_request->intersect = treatment == REG_REQ_INTERSECT;
	driver_request->processed = false;

	/*
	 * Since CRDA will not be called in this case as we already
	 * have applied the requested regulatory domain before we just
	 * inform userspace we have processed the request
	 */
	if (treatment == REG_REQ_ALREADY_SET) {
		FUNC4(driver_request);
		FUNC10(driver_request);
		FUNC9();
		return REG_REQ_ALREADY_SET;
	}

	if (FUNC8(driver_request)) {
		FUNC10(driver_request);
		return REG_REQ_OK;
	}

	return REG_REQ_IGNORE;
}