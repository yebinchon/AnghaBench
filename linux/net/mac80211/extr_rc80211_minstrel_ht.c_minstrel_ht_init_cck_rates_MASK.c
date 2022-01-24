#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct minstrel_priv {int* cck_rates; TYPE_3__* hw; } ;
struct ieee80211_supported_band {int n_bitrates; struct ieee80211_rate* bitrates; } ;
struct ieee80211_rate {int flags; int const bitrate; } ;
struct TYPE_4__ {int /*<<< orphan*/  chandef; } ;
struct TYPE_6__ {TYPE_2__* wiphy; TYPE_1__ conf; } ;
struct TYPE_5__ {struct ieee80211_supported_band** bands; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int IEEE80211_RATE_ERP_G ; 
 size_t NL80211_BAND_2GHZ ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct minstrel_priv *mp)
{
	static const int bitrates[4] = { 10, 20, 55, 110 };
	struct ieee80211_supported_band *sband;
	u32 rate_flags = FUNC1(&mp->hw->conf.chandef);
	int i, j;

	sband = mp->hw->wiphy->bands[NL80211_BAND_2GHZ];
	if (!sband)
		return;

	for (i = 0; i < sband->n_bitrates; i++) {
		struct ieee80211_rate *rate = &sband->bitrates[i];

		if (rate->flags & IEEE80211_RATE_ERP_G)
			continue;

		if ((rate_flags & sband->bitrates[i].flags) != rate_flags)
			continue;

		for (j = 0; j < FUNC0(bitrates); j++) {
			if (rate->bitrate != bitrates[j])
				continue;

			mp->cck_rates[j] = i;
			break;
		}
	}
}