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
typedef  int /*<<< orphan*/  u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_freq_range {int dummy; } ;
struct ieee80211_channel {int center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ieee80211_freq_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct wiphy *wiphy,
					 struct ieee80211_freq_range *freq_limits,
					 unsigned int n_freq_limits,
					 struct ieee80211_channel *chan)
{
	u32 bw = FUNC0(20);
	int i;

	for (i = 0; i < n_freq_limits; i++) {
		struct ieee80211_freq_range *limit = &freq_limits[i];

		if (FUNC1(limit,
					       FUNC0(chan->center_freq),
					       bw))
			return true;
	}

	return false;
}