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
struct regulatory_request {int /*<<< orphan*/  country_ie_env; int /*<<< orphan*/  wiphy_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENVIRON_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WIPHY_IDX_INVALID ; 
 struct regulatory_request* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wiphy*) ; 
 int /*<<< orphan*/  reg_num_devs_support_basehint ; 
 struct wiphy* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct wiphy *wiphy)
{
	struct wiphy *request_wiphy = NULL;
	struct regulatory_request *lr;

	lr = FUNC1();

	if (!FUNC4(wiphy))
		reg_num_devs_support_basehint--;

	FUNC3(FUNC2(wiphy));
	FUNC0(wiphy->regd, NULL);

	if (lr)
		request_wiphy = FUNC5(lr->wiphy_idx);

	if (!request_wiphy || request_wiphy != wiphy)
		return;

	lr->wiphy_idx = WIPHY_IDX_INVALID;
	lr->country_ie_env = ENVIRON_ANY;
}