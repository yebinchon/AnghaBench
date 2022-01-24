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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_regdomain {int dummy; } ;
struct ieee80211_freq_range {int /*<<< orphan*/  max_bandwidth_khz; } ;
struct ieee80211_reg_rule {int flags; struct ieee80211_freq_range freq_range; } ;
struct ieee80211_channel {int center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_CHAN_NO_10MHZ ; 
 int /*<<< orphan*/  IEEE80211_CHAN_NO_160MHZ ; 
 int /*<<< orphan*/  IEEE80211_CHAN_NO_20MHZ ; 
 int /*<<< orphan*/  IEEE80211_CHAN_NO_80MHZ ; 
 int /*<<< orphan*/  IEEE80211_CHAN_NO_HT40 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NL80211_RRF_AUTO_BW ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_freq_range const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_regdomain const*,struct ieee80211_reg_rule const*) ; 

__attribute__((used)) static uint32_t FUNC3(const struct ieee80211_regdomain *regd,
					  const struct ieee80211_reg_rule *reg_rule,
					  const struct ieee80211_channel *chan)
{
	const struct ieee80211_freq_range *freq_range = NULL;
	u32 max_bandwidth_khz, bw_flags = 0;

	freq_range = &reg_rule->freq_range;

	max_bandwidth_khz = freq_range->max_bandwidth_khz;
	/* Check if auto calculation requested */
	if (reg_rule->flags & NL80211_RRF_AUTO_BW)
		max_bandwidth_khz = FUNC2(regd, reg_rule);

	/* If we get a reg_rule we can assume that at least 5Mhz fit */
	if (!FUNC1(freq_range,
					FUNC0(chan->center_freq),
					FUNC0(10)))
		bw_flags |= IEEE80211_CHAN_NO_10MHZ;
	if (!FUNC1(freq_range,
					FUNC0(chan->center_freq),
					FUNC0(20)))
		bw_flags |= IEEE80211_CHAN_NO_20MHZ;

	if (max_bandwidth_khz < FUNC0(10))
		bw_flags |= IEEE80211_CHAN_NO_10MHZ;
	if (max_bandwidth_khz < FUNC0(20))
		bw_flags |= IEEE80211_CHAN_NO_20MHZ;
	if (max_bandwidth_khz < FUNC0(40))
		bw_flags |= IEEE80211_CHAN_NO_HT40;
	if (max_bandwidth_khz < FUNC0(80))
		bw_flags |= IEEE80211_CHAN_NO_80MHZ;
	if (max_bandwidth_khz < FUNC0(160))
		bw_flags |= IEEE80211_CHAN_NO_160MHZ;
	return bw_flags;
}