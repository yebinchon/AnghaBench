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
typedef  scalar_t__ u32 ;
typedef  struct ieee80211_vht_operation {int cap; int /*<<< orphan*/  basic_mcs_set; int /*<<< orphan*/  ht_supported; } const ieee80211_vht_operation ;
struct TYPE_8__ {int /*<<< orphan*/  vht_supported; } ;
struct ieee80211_supported_band {TYPE_2__ vht_cap; int /*<<< orphan*/  ht_cap; } ;
struct cfg80211_chan_def {scalar_t__ width; scalar_t__ center_freq1; struct ieee80211_channel* chan; } ;
struct TYPE_9__ {struct cfg80211_chan_def chandef; } ;
struct TYPE_10__ {TYPE_3__ bss_conf; } ;
struct ieee80211_if_managed {scalar_t__ flags; } ;
struct TYPE_7__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_5__* local; TYPE_4__ vif; TYPE_1__ u; } ;
typedef  struct ieee80211_sta_ht_cap {int cap; int /*<<< orphan*/  basic_mcs_set; int /*<<< orphan*/  ht_supported; } const ieee80211_sta_ht_cap ;
struct ieee80211_ht_operation {int /*<<< orphan*/  primary_chan; } ;
struct ieee80211_he_operation {int /*<<< orphan*/ * optional; int /*<<< orphan*/  he_oper_params; } ;
struct ieee80211_channel {scalar_t__ center_freq; int /*<<< orphan*/  band; } ;
typedef  int /*<<< orphan*/  sta_ht_cap ;
struct TYPE_12__ {int /*<<< orphan*/  wiphy; } ;
struct TYPE_11__ {TYPE_6__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_CHAN_DISABLED ; 
 int IEEE80211_HE_OPERATION_VHT_OPER_INFO ; 
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ; 
 scalar_t__ IEEE80211_STA_DISABLE_40MHZ ; 
 scalar_t__ IEEE80211_STA_DISABLE_HE ; 
 scalar_t__ IEEE80211_STA_DISABLE_HT ; 
 scalar_t__ IEEE80211_STA_DISABLE_VHT ; 
 scalar_t__ NL80211_CHAN_WIDTH_20 ; 
 scalar_t__ NL80211_CHAN_WIDTH_20_NOHT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_chan_def*,struct cfg80211_chan_def*) ; 
 scalar_t__ FUNC3 (struct cfg80211_chan_def*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cfg80211_chan_def*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*,struct ieee80211_vht_operation const*) ; 
 scalar_t__ FUNC8 (struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_ht_operation const*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,struct ieee80211_vht_operation const*,struct ieee80211_ht_operation const*,struct cfg80211_chan_def*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_vht_operation const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct cfg80211_chan_def*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_sub_if_data*,char*,...) ; 

__attribute__((used)) static u32
FUNC16(struct ieee80211_sub_if_data *sdata,
			     struct ieee80211_supported_band *sband,
			     struct ieee80211_channel *channel,
			     const struct ieee80211_ht_operation *ht_oper,
			     const struct ieee80211_vht_operation *vht_oper,
			     const struct ieee80211_he_operation *he_oper,
			     struct cfg80211_chan_def *chandef, bool tracking)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	struct cfg80211_chan_def vht_chandef;
	struct ieee80211_sta_ht_cap sta_ht_cap;
	u32 ht_cfreq, ret;

	FUNC13(&sta_ht_cap, &sband->ht_cap, sizeof(sta_ht_cap));
	FUNC7(sdata, &sta_ht_cap);

	FUNC14(chandef, 0, sizeof(struct cfg80211_chan_def));
	chandef->chan = channel;
	chandef->width = NL80211_CHAN_WIDTH_20_NOHT;
	chandef->center_freq1 = channel->center_freq;

	if (!ht_oper || !sta_ht_cap.ht_supported) {
		ret = IEEE80211_STA_DISABLE_HT | IEEE80211_STA_DISABLE_VHT;
		goto out;
	}

	chandef->width = NL80211_CHAN_WIDTH_20;

	ht_cfreq = FUNC11(ht_oper->primary_chan,
						  channel->band);
	/* check that channel matches the right operating channel */
	if (!tracking && channel->center_freq != ht_cfreq) {
		/*
		 * It's possible that some APs are confused here;
		 * Netgear WNDR3700 sometimes reports 4 higher than
		 * the actual channel in association responses, but
		 * since we look at probe response/beacon data here
		 * it should be OK.
		 */
		FUNC15(sdata,
			   "Wrong control channel: center-freq: %d ht-cfreq: %d ht->primary_chan: %d band: %d - Disabling HT\n",
			   channel->center_freq, ht_cfreq,
			   ht_oper->primary_chan, channel->band);
		ret = IEEE80211_STA_DISABLE_HT | IEEE80211_STA_DISABLE_VHT;
		goto out;
	}

	/* check 40 MHz support, if we have it */
	if (sta_ht_cap.cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40) {
		FUNC9(ht_oper, chandef);
	} else {
		/* 40 MHz (and 80 MHz) must be supported for VHT */
		ret = IEEE80211_STA_DISABLE_VHT;
		/* also mark 40 MHz disabled */
		ret |= IEEE80211_STA_DISABLE_40MHZ;
		goto out;
	}

	if (!vht_oper || !sband->vht_cap.vht_supported) {
		ret = IEEE80211_STA_DISABLE_VHT;
		goto out;
	}

	vht_chandef = *chandef;
	if (!(ifmgd->flags & IEEE80211_STA_DISABLE_HE) && he_oper &&
	    (FUNC12(he_oper->he_oper_params) &
	     IEEE80211_HE_OPERATION_VHT_OPER_INFO)) {
		struct ieee80211_vht_operation he_oper_vht_cap;

		/*
		 * Set only first 3 bytes (other 2 aren't used in
		 * ieee80211_chandef_vht_oper() anyway)
		 */
		FUNC13(&he_oper_vht_cap, he_oper->optional, 3);
		he_oper_vht_cap.basic_mcs_set = FUNC6(0);

		if (!FUNC10(&sdata->local->hw,
						&he_oper_vht_cap, ht_oper,
						&vht_chandef)) {
			if (!(ifmgd->flags & IEEE80211_STA_DISABLE_HE))
				FUNC15(sdata,
					   "HE AP VHT information is invalid, disable HE\n");
			ret = IEEE80211_STA_DISABLE_HE;
			goto out;
		}
	} else if (!FUNC10(&sdata->local->hw, vht_oper,
					       ht_oper, &vht_chandef)) {
		if (!(ifmgd->flags & IEEE80211_STA_DISABLE_VHT))
			FUNC15(sdata,
				   "AP VHT information is invalid, disable VHT\n");
		ret = IEEE80211_STA_DISABLE_VHT;
		goto out;
	}

	if (!FUNC5(&vht_chandef)) {
		if (!(ifmgd->flags & IEEE80211_STA_DISABLE_VHT))
			FUNC15(sdata,
				   "AP VHT information is invalid, disable VHT\n");
		ret = IEEE80211_STA_DISABLE_VHT;
		goto out;
	}

	if (FUNC3(chandef, &vht_chandef)) {
		ret = 0;
		goto out;
	}

	if (!FUNC2(chandef, &vht_chandef)) {
		if (!(ifmgd->flags & IEEE80211_STA_DISABLE_VHT))
			FUNC15(sdata,
				   "AP VHT information doesn't match HT, disable VHT\n");
		ret = IEEE80211_STA_DISABLE_VHT;
		goto out;
	}

	*chandef = vht_chandef;

	ret = 0;

out:
	/*
	 * When tracking the current AP, don't do any further checks if the
	 * new chandef is identical to the one we're currently using for the
	 * connection. This keeps us from playing ping-pong with regulatory,
	 * without it the following can happen (for example):
	 *  - connect to an AP with 80 MHz, world regdom allows 80 MHz
	 *  - AP advertises regdom US
	 *  - CRDA loads regdom US with 80 MHz prohibited (old database)
	 *  - the code below detects an unsupported channel, downgrades, and
	 *    we disconnect from the AP in the caller
	 *  - disconnect causes CRDA to reload world regdomain and the game
	 *    starts anew.
	 * (see https://bugzilla.kernel.org/show_bug.cgi?id=70881)
	 *
	 * It seems possible that there are still scenarios with CSA or real
	 * bandwidth changes where a this could happen, but those cases are
	 * less common and wouldn't completely prevent using the AP.
	 */
	if (tracking &&
	    FUNC3(chandef, &sdata->vif.bss_conf.chandef))
		return ret;

	/* don't print the message below for VHT mismatch if VHT is disabled */
	if (ret & IEEE80211_STA_DISABLE_VHT)
		vht_chandef = *chandef;

	/*
	 * Ignore the DISABLED flag when we're already connected and only
	 * tracking the APs beacon for bandwidth changes - otherwise we
	 * might get disconnected here if we connect to an AP, update our
	 * regulatory information based on the AP's country IE and the
	 * information we have is wrong/outdated and disables the channel
	 * that we're actually using for the connection to the AP.
	 */
	while (!FUNC4(sdata->local->hw.wiphy, chandef,
					tracking ? 0 :
						   IEEE80211_CHAN_DISABLED)) {
		if (FUNC0(chandef->width == NL80211_CHAN_WIDTH_20_NOHT)) {
			ret = IEEE80211_STA_DISABLE_HT |
			      IEEE80211_STA_DISABLE_VHT;
			break;
		}

		ret |= FUNC8(chandef);
	}

	if (chandef->width != vht_chandef.width && !tracking)
		FUNC15(sdata,
			   "capabilities/regulatory prevented using AP HT/VHT configuration, downgraded\n");

	FUNC1(!FUNC5(chandef));
	return ret;
}