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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ieee80211_regdomain {unsigned int n_reg_rules; struct ieee80211_reg_rule* reg_rules; scalar_t__ dfs_region; int /*<<< orphan*/  alpha2; } ;
struct ieee80211_power_rule {unsigned int max_antenna_gain; unsigned int max_eirp; } ;
struct ieee80211_freq_range {unsigned int max_bandwidth_khz; unsigned int start_freq_khz; unsigned int end_freq_khz; } ;
struct ieee80211_reg_rule {unsigned int flags; unsigned int dfs_cac_ms; struct ieee80211_power_rule power_rule; struct ieee80211_freq_range freq_range; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NL80211_ATTR_DFS_CAC_TIME ; 
 int /*<<< orphan*/  NL80211_ATTR_DFS_REGION ; 
 int /*<<< orphan*/  NL80211_ATTR_FREQ_RANGE_END ; 
 int /*<<< orphan*/  NL80211_ATTR_FREQ_RANGE_MAX_BW ; 
 int /*<<< orphan*/  NL80211_ATTR_FREQ_RANGE_START ; 
 int /*<<< orphan*/  NL80211_ATTR_POWER_RULE_MAX_ANT_GAIN ; 
 int /*<<< orphan*/  NL80211_ATTR_POWER_RULE_MAX_EIRP ; 
 int /*<<< orphan*/  NL80211_ATTR_REG_ALPHA2 ; 
 unsigned int NL80211_ATTR_REG_RULES ; 
 int /*<<< orphan*/  NL80211_ATTR_REG_RULE_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC1 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC5 (struct ieee80211_regdomain const*,struct ieee80211_reg_rule const*) ; 

__attribute__((used)) static int FUNC6(const struct ieee80211_regdomain *regdom,
			      struct sk_buff *msg)
{
	struct nlattr *nl_reg_rules;
	unsigned int i;

	if (FUNC2(msg, NL80211_ATTR_REG_ALPHA2, regdom->alpha2) ||
	    (regdom->dfs_region &&
	     FUNC4(msg, NL80211_ATTR_DFS_REGION, regdom->dfs_region)))
		goto nla_put_failure;

	nl_reg_rules = FUNC1(msg, NL80211_ATTR_REG_RULES);
	if (!nl_reg_rules)
		goto nla_put_failure;

	for (i = 0; i < regdom->n_reg_rules; i++) {
		struct nlattr *nl_reg_rule;
		const struct ieee80211_reg_rule *reg_rule;
		const struct ieee80211_freq_range *freq_range;
		const struct ieee80211_power_rule *power_rule;
		unsigned int max_bandwidth_khz;

		reg_rule = &regdom->reg_rules[i];
		freq_range = &reg_rule->freq_range;
		power_rule = &reg_rule->power_rule;

		nl_reg_rule = FUNC1(msg, i);
		if (!nl_reg_rule)
			goto nla_put_failure;

		max_bandwidth_khz = freq_range->max_bandwidth_khz;
		if (!max_bandwidth_khz)
			max_bandwidth_khz = FUNC5(regdom,
								  reg_rule);

		if (FUNC3(msg, NL80211_ATTR_REG_RULE_FLAGS,
				reg_rule->flags) ||
		    FUNC3(msg, NL80211_ATTR_FREQ_RANGE_START,
				freq_range->start_freq_khz) ||
		    FUNC3(msg, NL80211_ATTR_FREQ_RANGE_END,
				freq_range->end_freq_khz) ||
		    FUNC3(msg, NL80211_ATTR_FREQ_RANGE_MAX_BW,
				max_bandwidth_khz) ||
		    FUNC3(msg, NL80211_ATTR_POWER_RULE_MAX_ANT_GAIN,
				power_rule->max_antenna_gain) ||
		    FUNC3(msg, NL80211_ATTR_POWER_RULE_MAX_EIRP,
				power_rule->max_eirp) ||
		    FUNC3(msg, NL80211_ATTR_DFS_CAC_TIME,
				reg_rule->dfs_cac_ms))
			goto nla_put_failure;

		FUNC0(msg, nl_reg_rule);
	}

	FUNC0(msg, nl_reg_rules);
	return 0;

nla_put_failure:
	return -EMSGSIZE;
}