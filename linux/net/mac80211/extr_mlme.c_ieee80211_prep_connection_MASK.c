#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_10__ {void** supp_rates; } ;
struct sta_info {TYPE_3__ sta; } ;
struct ieee80211_supported_band {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  sync_dtim_count; int /*<<< orphan*/  sync_device_ts; int /*<<< orphan*/  sync_tsf; int /*<<< orphan*/  beacon_int; void* basic_rates; } ;
struct TYPE_13__ {TYPE_5__ bss_conf; } ;
struct ieee80211_if_managed {int /*<<< orphan*/  bssid; int /*<<< orphan*/  assoc_data; int /*<<< orphan*/  auth_data; } ;
struct TYPE_8__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_6__ vif; struct ieee80211_local* local; int /*<<< orphan*/  flags; TYPE_1__ u; } ;
struct TYPE_14__ {TYPE_2__* wiphy; } ;
struct ieee80211_local {scalar_t__ scanning; TYPE_7__ hw; scalar_t__ in_reconfig; } ;
struct ieee80211_bss {int /*<<< orphan*/  device_ts_presp; int /*<<< orphan*/  device_ts_beacon; int /*<<< orphan*/  supp_rates_len; int /*<<< orphan*/  supp_rates; } ;
struct cfg80211_bss_ies {int /*<<< orphan*/  tsf; } ;
struct cfg80211_bss {int /*<<< orphan*/  bssid; int /*<<< orphan*/  proberesp_ies; int /*<<< orphan*/  beacon_ies; int /*<<< orphan*/  beacon_interval; TYPE_4__* channel; scalar_t__ priv; } ;
struct TYPE_11__ {size_t band; } ;
struct TYPE_9__ {struct ieee80211_supported_band** bands; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int BSS_CHANGED_BASIC_RATES ; 
 int BSS_CHANGED_BEACON_INT ; 
 int BSS_CHANGED_BSSID ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IEEE80211_SDATA_OPERATING_GMODE ; 
 int /*<<< orphan*/  IEEE80211_STA_AUTH ; 
 int INT_MAX ; 
 size_t NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  TIMING_BEACON_ONLY ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cfg80211_bss_ies const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_supported_band*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,void**,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ieee80211_sub_if_data*,struct cfg80211_bss*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_local*) ; 
 int FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cfg80211_bss_ies* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_sub_if_data*,char*,...) ; 
 struct sta_info* FUNC16 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_local*,struct sta_info*) ; 
 int FUNC18 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC20 (struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct ieee80211_sub_if_data *sdata,
				     struct cfg80211_bss *cbss, bool assoc,
				     bool override)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	struct ieee80211_bss *bss = (void *)cbss->priv;
	struct sta_info *new_sta = NULL;
	struct ieee80211_supported_band *sband;
	bool have_sta = false;
	int err;

	sband = local->hw.wiphy->bands[cbss->channel->band];

	if (FUNC1(!ifmgd->auth_data && !ifmgd->assoc_data))
		return -EINVAL;

	/* If a reconfig is happening, bail out */
	if (local->in_reconfig)
		return -EBUSY;

	if (assoc) {
		FUNC13();
		have_sta = FUNC18(sdata, cbss->bssid);
		FUNC14();
	}

	if (!have_sta) {
		new_sta = FUNC16(sdata, cbss->bssid, GFP_KERNEL);
		if (!new_sta)
			return -ENOMEM;
	}

	/*
	 * Set up the information for the new channel before setting the
	 * new channel. We can't - completely race-free - change the basic
	 * rates bitmap and the channel (sband) that it refers to, but if
	 * we set it up before we at least avoid calling into the driver's
	 * bss_info_changed() method with invalid information (since we do
	 * call that from changing the channel - only for IDLE and perhaps
	 * some others, but ...).
	 *
	 * So to avoid that, just set up all the new information before the
	 * channel, but tell the driver to apply it only afterwards, since
	 * it might need the new channel for that.
	 */
	if (new_sta) {
		u32 rates = 0, basic_rates = 0;
		bool have_higher_than_11mbit;
		int min_rate = INT_MAX, min_rate_index = -1;
		const struct cfg80211_bss_ies *ies;
		int shift = FUNC10(&sdata->vif);

		FUNC6(sband, bss->supp_rates,
				    bss->supp_rates_len,
				    &rates, &basic_rates,
				    &have_higher_than_11mbit,
				    &min_rate, &min_rate_index,
				    shift);

		/*
		 * This used to be a workaround for basic rates missing
		 * in the association response frame. Now that we no
		 * longer use the basic rates from there, it probably
		 * doesn't happen any more, but keep the workaround so
		 * in case some *other* APs are buggy in different ways
		 * we can connect -- with a warning.
		 */
		if (!basic_rates && min_rate_index >= 0) {
			FUNC15(sdata,
				   "No basic rates, using min rate instead\n");
			basic_rates = FUNC0(min_rate_index);
		}

		if (rates)
			new_sta->sta.supp_rates[cbss->channel->band] = rates;
		else
			FUNC15(sdata,
				   "No rates found, keeping mandatory only\n");

		sdata->vif.bss_conf.basic_rates = basic_rates;

		/* cf. IEEE 802.11 9.2.12 */
		if (cbss->channel->band == NL80211_BAND_2GHZ &&
		    have_higher_than_11mbit)
			sdata->flags |= IEEE80211_SDATA_OPERATING_GMODE;
		else
			sdata->flags &= ~IEEE80211_SDATA_OPERATING_GMODE;

		FUNC11(ifmgd->bssid, cbss->bssid, ETH_ALEN);

		/* set timing information */
		sdata->vif.bss_conf.beacon_int = cbss->beacon_interval;
		FUNC13();
		ies = FUNC12(cbss->beacon_ies);
		if (ies) {
			sdata->vif.bss_conf.sync_tsf = ies->tsf;
			sdata->vif.bss_conf.sync_device_ts =
				bss->device_ts_beacon;

			FUNC5(ies,
					   &sdata->vif.bss_conf.sync_dtim_count,
					   NULL);
		} else if (!FUNC7(&sdata->local->hw,
					       TIMING_BEACON_ONLY)) {
			ies = FUNC12(cbss->proberesp_ies);
			/* must be non-NULL since beacon IEs were NULL */
			sdata->vif.bss_conf.sync_tsf = ies->tsf;
			sdata->vif.bss_conf.sync_device_ts =
				bss->device_ts_presp;
			sdata->vif.bss_conf.sync_dtim_count = 0;
		} else {
			sdata->vif.bss_conf.sync_tsf = 0;
			sdata->vif.bss_conf.sync_device_ts = 0;
			sdata->vif.bss_conf.sync_dtim_count = 0;
		}
		FUNC14();
	}

	if (new_sta || override) {
		err = FUNC8(sdata, cbss);
		if (err) {
			if (new_sta)
				FUNC17(local, new_sta);
			return -EINVAL;
		}
	}

	if (new_sta) {
		/*
		 * tell driver about BSSID, basic rates and timing
		 * this was set up above, before setting the channel
		 */
		FUNC4(sdata,
			BSS_CHANGED_BSSID | BSS_CHANGED_BASIC_RATES |
			BSS_CHANGED_BEACON_INT);

		if (assoc)
			FUNC20(new_sta, IEEE80211_STA_AUTH);

		err = FUNC19(new_sta);
		new_sta = NULL;
		if (err) {
			FUNC15(sdata,
				   "failed to insert STA entry for the AP (error %d)\n",
				   err);
			return err;
		}
	} else
		FUNC2(!FUNC3(ifmgd->bssid, cbss->bssid));

	/* Cancel scan to ensure that nothing interferes with connection */
	if (local->scanning)
		FUNC9(local);

	return 0;
}