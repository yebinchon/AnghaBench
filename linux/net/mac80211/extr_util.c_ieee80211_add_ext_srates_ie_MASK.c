#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct ieee80211_supported_band {size_t n_bitrates; TYPE_4__* bitrates; } ;
struct TYPE_6__ {int basic_rates; int /*<<< orphan*/  chandef; } ;
struct TYPE_10__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_5__ vif; struct ieee80211_local* local; } ;
struct TYPE_8__ {TYPE_2__* wiphy; } ;
struct ieee80211_local {TYPE_3__ hw; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  bitrate; } ;
struct TYPE_7__ {struct ieee80211_supported_band** bands; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  WLAN_EID_EXT_SUPP_RATES ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_5__*) ; 
 size_t* FUNC4 (struct sk_buff*,size_t) ; 
 size_t FUNC5 (struct sk_buff*) ; 

int FUNC6(struct ieee80211_sub_if_data *sdata,
				struct sk_buff *skb, bool need_basic,
				enum nl80211_band band)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_supported_band *sband;
	int rate, shift;
	u8 i, exrates, *pos;
	u32 basic_rates = sdata->vif.bss_conf.basic_rates;
	u32 rate_flags;

	rate_flags = FUNC2(&sdata->vif.bss_conf.chandef);
	shift = FUNC3(&sdata->vif);

	sband = local->hw.wiphy->bands[band];
	exrates = 0;
	for (i = 0; i < sband->n_bitrates; i++) {
		if ((rate_flags & sband->bitrates[i].flags) != rate_flags)
			continue;
		exrates++;
	}

	if (exrates > 8)
		exrates -= 8;
	else
		exrates = 0;

	if (FUNC5(skb) < exrates + 2)
		return -ENOMEM;

	if (exrates) {
		pos = FUNC4(skb, exrates + 2);
		*pos++ = WLAN_EID_EXT_SUPP_RATES;
		*pos++ = exrates;
		for (i = 8; i < sband->n_bitrates; i++) {
			u8 basic = 0;
			if ((rate_flags & sband->bitrates[i].flags)
			    != rate_flags)
				continue;
			if (need_basic && basic_rates & FUNC0(i))
				basic = 0x80;
			rate = FUNC1(sband->bitrates[i].bitrate,
					    5 * (1 << shift));
			*pos++ = basic | (u8) rate;
		}
	}
	return 0;
}