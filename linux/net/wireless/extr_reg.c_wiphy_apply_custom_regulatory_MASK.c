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
struct wiphy {int regulatory_flags; int /*<<< orphan*/ * bands; } ;
struct ieee80211_regdomain {int dummy; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 int NUM_NL80211_BANDS ; 
 int REGULATORY_CUSTOM_REG ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wiphy*,int /*<<< orphan*/ ,struct ieee80211_regdomain const*) ; 

void FUNC3(struct wiphy *wiphy,
				   const struct ieee80211_regdomain *regd)
{
	enum nl80211_band band;
	unsigned int bands_set = 0;

	FUNC0(!(wiphy->regulatory_flags & REGULATORY_CUSTOM_REG),
	     "wiphy should have REGULATORY_CUSTOM_REG\n");
	wiphy->regulatory_flags |= REGULATORY_CUSTOM_REG;

	for (band = 0; band < NUM_NL80211_BANDS; band++) {
		if (!wiphy->bands[band])
			continue;
		FUNC2(wiphy, wiphy->bands[band], regd);
		bands_set++;
	}

	/*
	 * no point in calling this if it won't have any effect
	 * on your device's supported bands.
	 */
	FUNC1(!bands_set);
}