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
struct regulatory_request {int initiator; scalar_t__ wiphy_idx; } ;
typedef  enum reg_request_treatment { ____Placeholder_reg_request_treatment } reg_request_treatment ;
typedef  enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;

/* Variables and functions */
#define  NL80211_REGDOM_SET_BY_CORE 131 
#define  NL80211_REGDOM_SET_BY_COUNTRY_IE 130 
#define  NL80211_REGDOM_SET_BY_DRIVER 129 
#define  NL80211_REGDOM_SET_BY_USER 128 
 int REGULATORY_STRICT_REG ; 
 int REG_REQ_ALREADY_SET ; 
 int REG_REQ_IGNORE ; 
 int REG_REQ_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ WIPHY_IDX_INVALID ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct regulatory_request*) ; 
 int FUNC3 (struct regulatory_request*) ; 
 int FUNC4 (struct wiphy*,struct regulatory_request*) ; 
 int FUNC5 (struct wiphy*,struct regulatory_request*) ; 
 int FUNC6 (struct regulatory_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct wiphy*) ; 
 struct wiphy* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct wiphy*,int) ; 

__attribute__((used)) static void FUNC10(struct regulatory_request *reg_request)
{
	struct wiphy *wiphy = NULL;
	enum reg_request_treatment treatment;
	enum nl80211_reg_initiator initiator = reg_request->initiator;

	if (reg_request->wiphy_idx != WIPHY_IDX_INVALID)
		wiphy = FUNC8(reg_request->wiphy_idx);

	switch (initiator) {
	case NL80211_REGDOM_SET_BY_CORE:
		treatment = FUNC3(reg_request);
		break;
	case NL80211_REGDOM_SET_BY_USER:
		treatment = FUNC6(reg_request);
		break;
	case NL80211_REGDOM_SET_BY_DRIVER:
		if (!wiphy)
			goto out_free;
		treatment = FUNC5(wiphy, reg_request);
		break;
	case NL80211_REGDOM_SET_BY_COUNTRY_IE:
		if (!wiphy)
			goto out_free;
		treatment = FUNC4(wiphy, reg_request);
		break;
	default:
		FUNC0(1, "invalid initiator %d\n", initiator);
		goto out_free;
	}

	if (treatment == REG_REQ_IGNORE)
		goto out_free;

	FUNC0(treatment != REG_REQ_OK && treatment != REG_REQ_ALREADY_SET,
	     "unexpected treatment value %d\n", treatment);

	/* This is required so that the orig_* parameters are saved.
	 * NOTE: treatment must be set for any case that reaches here!
	 */
	if (treatment == REG_REQ_ALREADY_SET && wiphy &&
	    wiphy->regulatory_flags & REGULATORY_STRICT_REG) {
		FUNC9(wiphy, initiator);
		FUNC7(wiphy);
		FUNC1();
	}

	return;

out_free:
	FUNC2(reg_request);
}