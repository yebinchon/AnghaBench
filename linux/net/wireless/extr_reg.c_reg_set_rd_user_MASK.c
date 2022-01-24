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
struct regulatory_request {int /*<<< orphan*/  intersect; } ;
struct ieee80211_regdomain {int /*<<< orphan*/ * alpha2; } ;

/* Variables and functions */
 int EALREADY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ieee80211_regdomain* FUNC6 (struct ieee80211_regdomain const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct ieee80211_regdomain const*) ; 

__attribute__((used)) static int FUNC8(const struct ieee80211_regdomain *rd,
			   struct regulatory_request *user_request)
{
	const struct ieee80211_regdomain *intersected_rd = NULL;

	if (!FUNC5(rd->alpha2))
		return -EALREADY;

	if (!FUNC1(rd)) {
		FUNC3("Invalid regulatory domain detected: %c%c\n",
		       rd->alpha2[0], rd->alpha2[1]);
		FUNC4(rd);
		return -EINVAL;
	}

	if (!user_request->intersect) {
		FUNC7(false, rd);
		return 0;
	}

	intersected_rd = FUNC6(rd, FUNC0());
	if (!intersected_rd)
		return -EINVAL;

	FUNC2(rd);
	rd = NULL;
	FUNC7(false, intersected_rd);

	return 0;
}