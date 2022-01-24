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
typedef  struct ieee80211_regdomain {unsigned int n_reg_rules; struct ieee80211_regdomain const* reg_rules; } const ieee80211_regdomain ;
struct ieee80211_reg_rule {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct ieee80211_regdomain const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ieee80211_regdomain const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_regdomain const*,struct ieee80211_regdomain const*,int) ; 
 int /*<<< orphan*/  reg_rules ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_regdomain const*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static const struct ieee80211_regdomain *
FUNC4(const struct ieee80211_regdomain *src_regd)
{
	struct ieee80211_regdomain *regd;
	unsigned int i;

	regd = FUNC1(FUNC3(regd, reg_rules, src_regd->n_reg_rules),
		       GFP_KERNEL);
	if (!regd)
		return FUNC0(-ENOMEM);

	FUNC2(regd, src_regd, sizeof(struct ieee80211_regdomain));

	for (i = 0; i < src_regd->n_reg_rules; i++)
		FUNC2(&regd->reg_rules[i], &src_regd->reg_rules[i],
		       sizeof(struct ieee80211_reg_rule));

	return regd;
}