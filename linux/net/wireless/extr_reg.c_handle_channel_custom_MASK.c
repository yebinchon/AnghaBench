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
typedef  int u32 ;
struct wiphy {int regulatory_flags; } ;
struct ieee80211_regdomain {int dummy; } ;
struct ieee80211_power_rule {int /*<<< orphan*/  max_eirp; int /*<<< orphan*/  max_antenna_gain; } ;
struct ieee80211_reg_rule {scalar_t__ dfs_cac_ms; int /*<<< orphan*/  flags; struct ieee80211_power_rule power_rule; } ;
struct ieee80211_channel {int center_freq; int flags; int orig_flags; int beacon_found; int max_antenna_gain; int max_reg_power; int max_power; scalar_t__ dfs_cac_ms; int /*<<< orphan*/  dfs_state; int /*<<< orphan*/  dfs_state_entered; } ;

/* Variables and functions */
 int IEEE80211_CHAN_DISABLED ; 
 int IEEE80211_CHAN_RADAR ; 
 scalar_t__ IEEE80211_DFS_MIN_CAC_TIME_MS ; 
 scalar_t__ FUNC0 (struct ieee80211_reg_rule const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  NL80211_DFS_USABLE ; 
 int REGULATORY_WIPHY_SELF_MANAGED ; 
 struct ieee80211_reg_rule* FUNC4 (int,struct ieee80211_regdomain const*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (struct ieee80211_regdomain const*,struct ieee80211_reg_rule const*,struct ieee80211_channel*) ; 

__attribute__((used)) static void FUNC8(struct wiphy *wiphy,
				  struct ieee80211_channel *chan,
				  const struct ieee80211_regdomain *regd)
{
	u32 bw_flags = 0;
	const struct ieee80211_reg_rule *reg_rule = NULL;
	const struct ieee80211_power_rule *power_rule = NULL;
	u32 bw;

	for (bw = FUNC3(20); bw >= FUNC3(5); bw = bw / 2) {
		reg_rule = FUNC4(FUNC3(chan->center_freq),
					      regd, bw);
		if (!FUNC0(reg_rule))
			break;
	}

	if (FUNC0(reg_rule)) {
		FUNC6("Disabling freq %d MHz as custom regd has no rule that fits it\n",
			 chan->center_freq);
		if (wiphy->regulatory_flags & REGULATORY_WIPHY_SELF_MANAGED) {
			chan->flags |= IEEE80211_CHAN_DISABLED;
		} else {
			chan->orig_flags |= IEEE80211_CHAN_DISABLED;
			chan->flags = chan->orig_flags;
		}
		return;
	}

	power_rule = &reg_rule->power_rule;
	bw_flags = FUNC7(regd, reg_rule, chan);

	chan->dfs_state_entered = jiffies;
	chan->dfs_state = NL80211_DFS_USABLE;

	chan->beacon_found = false;

	if (wiphy->regulatory_flags & REGULATORY_WIPHY_SELF_MANAGED)
		chan->flags = chan->orig_flags | bw_flags |
			      FUNC5(reg_rule->flags);
	else
		chan->flags |= FUNC5(reg_rule->flags) | bw_flags;

	chan->max_antenna_gain = (int) FUNC1(power_rule->max_antenna_gain);
	chan->max_reg_power = chan->max_power =
		(int) FUNC2(power_rule->max_eirp);

	if (chan->flags & IEEE80211_CHAN_RADAR) {
		if (reg_rule->dfs_cac_ms)
			chan->dfs_cac_ms = reg_rule->dfs_cac_ms;
		else
			chan->dfs_cac_ms = IEEE80211_DFS_MIN_CAC_TIME_MS;
	}

	chan->max_power = chan->max_reg_power;
}