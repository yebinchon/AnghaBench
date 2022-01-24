#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct ieee802_11_elems {int supp_rates_len; int ext_supp_rates_len; int* supp_rates; int* ext_supp_rates; } ;
struct ieee80211_supported_band {size_t n_bitrates; TYPE_5__* bitrates; } ;
struct TYPE_10__ {int /*<<< orphan*/  chandef; } ;
struct TYPE_12__ {TYPE_4__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_6__ vif; TYPE_3__* local; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_11__ {int flags; int /*<<< orphan*/  bitrate; } ;
struct TYPE_8__ {TYPE_1__* wiphy; } ;
struct TYPE_9__ {TYPE_2__ hw; } ;
struct TYPE_7__ {struct ieee80211_supported_band** bands; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BSS_MEMBERSHIP_SELECTOR_HT_PHY ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_6__*) ; 

u32 FUNC5(struct ieee80211_sub_if_data *sdata,
			    struct ieee802_11_elems *elems,
			    enum nl80211_band band, u32 *basic_rates)
{
	struct ieee80211_supported_band *sband;
	size_t num_rates;
	u32 supp_rates, rate_flags;
	int i, j, shift;

	sband = sdata->local->hw.wiphy->bands[band];
	if (FUNC2(!sband))
		return 1;

	rate_flags = FUNC3(&sdata->vif.bss_conf.chandef);
	shift = FUNC4(&sdata->vif);

	num_rates = sband->n_bitrates;
	supp_rates = 0;
	for (i = 0; i < elems->supp_rates_len +
		     elems->ext_supp_rates_len; i++) {
		u8 rate = 0;
		int own_rate;
		bool is_basic;
		if (i < elems->supp_rates_len)
			rate = elems->supp_rates[i];
		else if (elems->ext_supp_rates)
			rate = elems->ext_supp_rates
				[i - elems->supp_rates_len];
		own_rate = 5 * (rate & 0x7f);
		is_basic = !!(rate & 0x80);

		if (is_basic && (rate & 0x7f) == BSS_MEMBERSHIP_SELECTOR_HT_PHY)
			continue;

		for (j = 0; j < num_rates; j++) {
			int brate;
			if ((rate_flags & sband->bitrates[j].flags)
			    != rate_flags)
				continue;

			brate = FUNC1(sband->bitrates[j].bitrate,
					     1 << shift);

			if (brate == own_rate) {
				supp_rates |= FUNC0(j);
				if (basic_rates && is_basic)
					*basic_rates |= FUNC0(j);
			}
		}
	}
	return supp_rates;
}