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
struct regulatory_request {scalar_t__ initiator; int /*<<< orphan*/  alpha2; int /*<<< orphan*/  wiphy_idx; } ;
typedef  enum reg_request_treatment { ____Placeholder_reg_request_treatment } reg_request_treatment ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NL80211_REGDOM_SET_BY_COUNTRY_IE ; 
 int REGULATORY_COUNTRY_IE_IGNORE ; 
 int REG_REQ_ALREADY_SET ; 
 int REG_REQ_IGNORE ; 
 int REG_REQ_OK ; 
 struct regulatory_request* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct regulatory_request*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 struct wiphy* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum reg_request_treatment
FUNC6(struct wiphy *wiphy,
			      struct regulatory_request *country_ie_request)
{
	struct wiphy *last_wiphy = NULL;
	struct regulatory_request *lr = FUNC0();

	if (FUNC2(lr)) {
		/* Trust a Cell base station over the AP's country IE */
		if (FUNC3(country_ie_request->alpha2))
			return REG_REQ_IGNORE;
		return REG_REQ_ALREADY_SET;
	} else {
		if (wiphy->regulatory_flags & REGULATORY_COUNTRY_IE_IGNORE)
			return REG_REQ_IGNORE;
	}

	if (FUNC4(!FUNC1(country_ie_request->alpha2)))
		return -EINVAL;

	if (lr->initiator != NL80211_REGDOM_SET_BY_COUNTRY_IE)
		return REG_REQ_OK;

	last_wiphy = FUNC5(lr->wiphy_idx);

	if (last_wiphy != wiphy) {
		/*
		 * Two cards with two APs claiming different
		 * Country IE alpha2s. We could
		 * intersect them, but that seems unlikely
		 * to be correct. Reject second one for now.
		 */
		if (FUNC3(country_ie_request->alpha2))
			return REG_REQ_IGNORE;
		return REG_REQ_ALREADY_SET;
	}

	if (FUNC3(country_ie_request->alpha2))
		return REG_REQ_OK;
	return REG_REQ_ALREADY_SET;
}