#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u16 ;
struct wiphy_iftype_ext_capab {size_t extended_capabilities_len; size_t* extended_capabilities; } ;
struct wiphy {int interface_modes; int features; int nan_supported_bands; int regulatory_flags; int flags; int bss_select_support; size_t extended_capabilities_len; int num_iftype_ext_capab; size_t* extended_capabilities; struct wiphy_iftype_ext_capab* iftype_ext_capab; struct ieee80211_supported_band** bands; TYPE_6__* addresses; int /*<<< orphan*/  perm_addr; scalar_t__ max_acl_mac_addrs; int /*<<< orphan*/  n_addresses; scalar_t__ ap_sme_capa; TYPE_4__* coalesce; TYPE_3__* pmsr_capa; TYPE_1__* wowlan; } ;
struct regulatory_request {char* alpha2; int /*<<< orphan*/  initiator; int /*<<< orphan*/  wiphy_idx; } ;
struct TYPE_24__ {int /*<<< orphan*/  cap; scalar_t__ ht_supported; } ;
struct ieee80211_supported_band {int band; int n_channels; int n_bitrates; int n_iftype_data; struct ieee80211_sband_iftype_data* iftype_data; TYPE_8__* channels; TYPE_7__ ht_cap; } ;
struct TYPE_26__ {int /*<<< orphan*/  has_he; } ;
struct ieee80211_sband_iftype_data {int types_mask; TYPE_9__ he_cap; } ;
struct TYPE_17__ {int flags; int n_vendor_commands; int registered; int /*<<< orphan*/  debugfsdir; int /*<<< orphan*/  dev; int /*<<< orphan*/  features; TYPE_11__* wowlan; TYPE_10__* vendor_commands; } ;
struct cfg80211_registered_device {TYPE_12__ wiphy; int /*<<< orphan*/ * rfkill; int /*<<< orphan*/  list; TYPE_5__* ops; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_25__ {int band; int /*<<< orphan*/  max_power; int /*<<< orphan*/  orig_mpwr; int /*<<< orphan*/  orig_mag; int /*<<< orphan*/  flags; int /*<<< orphan*/  orig_flags; } ;
struct TYPE_23__ {int /*<<< orphan*/  addr; } ;
struct TYPE_22__ {scalar_t__ update_connect_params; int /*<<< orphan*/  del_pmk; int /*<<< orphan*/  set_pmk; int /*<<< orphan*/  set_mac_acl; int /*<<< orphan*/  del_nan_func; int /*<<< orphan*/  add_nan_func; int /*<<< orphan*/  stop_nan; int /*<<< orphan*/  start_nan; int /*<<< orphan*/  tdls_cancel_channel_switch; int /*<<< orphan*/  tdls_channel_switch; } ;
struct TYPE_21__ {scalar_t__ pattern_min_len; scalar_t__ pattern_max_len; int /*<<< orphan*/  n_patterns; int /*<<< orphan*/  n_rules; } ;
struct TYPE_19__ {size_t preambles; size_t bandwidths; int /*<<< orphan*/  non_asap; int /*<<< orphan*/  asap; scalar_t__ supported; } ;
struct TYPE_20__ {TYPE_2__ ftm; } ;
struct TYPE_18__ {int flags; int /*<<< orphan*/  tcp; int /*<<< orphan*/  n_patterns; } ;
struct TYPE_16__ {scalar_t__ pattern_min_len; scalar_t__ pattern_max_len; scalar_t__ n_patterns; } ;
struct TYPE_15__ {int /*<<< orphan*/  dumpit; int /*<<< orphan*/  doit; int /*<<< orphan*/  policy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IEEE80211_HT_CAP_SGI_40 ; 
 int /*<<< orphan*/  IEEE80211_HT_CAP_SUP_WIDTH_20_40 ; 
 int /*<<< orphan*/  INT_MAX ; 
 int NL80211_BAND_2GHZ ; 
 int NL80211_BAND_60GHZ ; 
 int NL80211_CHAN_WIDTH_10 ; 
 int NL80211_CHAN_WIDTH_160 ; 
 int NL80211_CHAN_WIDTH_20 ; 
 int NL80211_CHAN_WIDTH_20_NOHT ; 
 int NL80211_CHAN_WIDTH_40 ; 
 int NL80211_CHAN_WIDTH_5 ; 
 int NL80211_CHAN_WIDTH_80 ; 
 int NL80211_CHAN_WIDTH_80P80 ; 
 int /*<<< orphan*/  NL80211_CMD_NEW_WIPHY ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_4WAY_HANDSHAKE_STA_1X ; 
 int /*<<< orphan*/  NL80211_FEATURE_SCAN_FLUSH ; 
 int NL80211_FEATURE_TDLS_CHANNEL_SWITCH ; 
 int NL80211_IFTYPE_ADHOC ; 
 int NL80211_IFTYPE_AP ; 
 int NL80211_IFTYPE_AP_VLAN ; 
 int NL80211_IFTYPE_MONITOR ; 
 int NL80211_IFTYPE_NAN ; 
 int NL80211_IFTYPE_P2P_CLIENT ; 
 int NL80211_IFTYPE_P2P_DEVICE ; 
 int NL80211_IFTYPE_P2P_GO ; 
 int NL80211_IFTYPE_STATION ; 
 int NL80211_IFTYPE_WDS ; 
 int NL80211_PREAMBLE_DMG ; 
 int NL80211_PREAMBLE_HT ; 
 int NL80211_PREAMBLE_LEGACY ; 
 int NL80211_PREAMBLE_VHT ; 
 int /*<<< orphan*/  NL80211_REGDOM_SET_BY_DRIVER ; 
 int NUM_NL80211_BANDS ; 
 int NUM_NL80211_IFTYPES ; 
 int REGULATORY_COUNTRY_IE_FOLLOW_POWER ; 
 int REGULATORY_COUNTRY_IE_IGNORE ; 
 int REGULATORY_CUSTOM_REG ; 
 int REGULATORY_IGNORE_STALE_KICKOFF ; 
 int REGULATORY_STRICT_REG ; 
 int REGULATORY_WIPHY_SELF_MANAGED ; 
 scalar_t__ FUNC1 (size_t) ; 
 int WIPHY_FLAG_HAVE_AP_SME ; 
 int WIPHY_FLAG_SUPPORTS_FW_ROAM ; 
 int WIPHY_WOWLAN_GTK_REKEY_FAILURE ; 
 int WIPHY_WOWLAN_SUPPORTS_GTK_REKEY ; 
 int __NL80211_BSS_SELECT_ATTR_AFTER_LAST ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_registered_device*) ; 
 scalar_t__ cfg80211_disable_40mhz_24ghz ; 
 int /*<<< orphan*/  cfg80211_rdev_list ; 
 int /*<<< orphan*/  cfg80211_rdev_list_generation ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wiphy*) ; 
 int /*<<< orphan*/  ieee80211_debugfs_dir ; 
 int /*<<< orphan*/  FUNC6 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cfg80211_registered_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct regulatory_request*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (TYPE_12__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC19 (struct wiphy*) ; 
 struct cfg80211_registered_device* FUNC20 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_12__*) ; 
 int FUNC22 (struct wiphy*) ; 

int FUNC23(struct wiphy *wiphy)
{
	struct cfg80211_registered_device *rdev = FUNC20(wiphy);
	int res;
	enum nl80211_band band;
	struct ieee80211_supported_band *sband;
	bool have_band = false;
	int i;
	u16 ifmodes = wiphy->interface_modes;

#ifdef CONFIG_PM
	if (WARN_ON(wiphy->wowlan &&
		    (wiphy->wowlan->flags & WIPHY_WOWLAN_GTK_REKEY_FAILURE) &&
		    !(wiphy->wowlan->flags & WIPHY_WOWLAN_SUPPORTS_GTK_REKEY)))
		return -EINVAL;
	if (WARN_ON(wiphy->wowlan &&
		    !wiphy->wowlan->flags && !wiphy->wowlan->n_patterns &&
		    !wiphy->wowlan->tcp))
		return -EINVAL;
#endif
	if (FUNC1((wiphy->features & NL80211_FEATURE_TDLS_CHANNEL_SWITCH) &&
		    (!rdev->ops->tdls_channel_switch ||
		     !rdev->ops->tdls_cancel_channel_switch)))
		return -EINVAL;

	if (FUNC1((wiphy->interface_modes & FUNC0(NL80211_IFTYPE_NAN)) &&
		    (!rdev->ops->start_nan || !rdev->ops->stop_nan ||
		     !rdev->ops->add_nan_func || !rdev->ops->del_nan_func ||
		     !(wiphy->nan_supported_bands & FUNC0(NL80211_BAND_2GHZ)))))
		return -EINVAL;

#ifndef CONFIG_WIRELESS_WDS
	if (FUNC1(wiphy->interface_modes & FUNC0(NL80211_IFTYPE_WDS)))
		return -EINVAL;
#endif

	if (FUNC1(wiphy->pmsr_capa && !wiphy->pmsr_capa->ftm.supported))
		return -EINVAL;

	if (wiphy->pmsr_capa && wiphy->pmsr_capa->ftm.supported) {
		if (FUNC1(!wiphy->pmsr_capa->ftm.asap &&
			    !wiphy->pmsr_capa->ftm.non_asap))
			return -EINVAL;
		if (FUNC1(!wiphy->pmsr_capa->ftm.preambles ||
			    !wiphy->pmsr_capa->ftm.bandwidths))
			return -EINVAL;
		if (FUNC1(wiphy->pmsr_capa->ftm.preambles &
				~(FUNC0(NL80211_PREAMBLE_LEGACY) |
				  FUNC0(NL80211_PREAMBLE_HT) |
				  FUNC0(NL80211_PREAMBLE_VHT) |
				  FUNC0(NL80211_PREAMBLE_DMG))))
			return -EINVAL;
		if (FUNC1(wiphy->pmsr_capa->ftm.bandwidths &
				~(FUNC0(NL80211_CHAN_WIDTH_20_NOHT) |
				  FUNC0(NL80211_CHAN_WIDTH_20) |
				  FUNC0(NL80211_CHAN_WIDTH_40) |
				  FUNC0(NL80211_CHAN_WIDTH_80) |
				  FUNC0(NL80211_CHAN_WIDTH_80P80) |
				  FUNC0(NL80211_CHAN_WIDTH_160) |
				  FUNC0(NL80211_CHAN_WIDTH_5) |
				  FUNC0(NL80211_CHAN_WIDTH_10))))
			return -EINVAL;
	}

	/*
	 * if a wiphy has unsupported modes for regulatory channel enforcement,
	 * opt-out of enforcement checking
	 */
	if (wiphy->interface_modes & ~(FUNC0(NL80211_IFTYPE_STATION) |
				       FUNC0(NL80211_IFTYPE_P2P_CLIENT) |
				       FUNC0(NL80211_IFTYPE_AP) |
				       FUNC0(NL80211_IFTYPE_P2P_GO) |
				       FUNC0(NL80211_IFTYPE_ADHOC) |
				       FUNC0(NL80211_IFTYPE_P2P_DEVICE) |
				       FUNC0(NL80211_IFTYPE_NAN) |
				       FUNC0(NL80211_IFTYPE_AP_VLAN) |
				       FUNC0(NL80211_IFTYPE_MONITOR)))
		wiphy->regulatory_flags |= REGULATORY_IGNORE_STALE_KICKOFF;

	if (FUNC1((wiphy->regulatory_flags & REGULATORY_WIPHY_SELF_MANAGED) &&
		    (wiphy->regulatory_flags &
					(REGULATORY_CUSTOM_REG |
					 REGULATORY_STRICT_REG |
					 REGULATORY_COUNTRY_IE_FOLLOW_POWER |
					 REGULATORY_COUNTRY_IE_IGNORE))))
		return -EINVAL;

	if (FUNC1(wiphy->coalesce &&
		    (!wiphy->coalesce->n_rules ||
		     !wiphy->coalesce->n_patterns) &&
		    (!wiphy->coalesce->pattern_min_len ||
		     wiphy->coalesce->pattern_min_len >
			wiphy->coalesce->pattern_max_len)))
		return -EINVAL;

	if (FUNC1(wiphy->ap_sme_capa &&
		    !(wiphy->flags & WIPHY_FLAG_HAVE_AP_SME)))
		return -EINVAL;

	if (FUNC1(wiphy->addresses && !wiphy->n_addresses))
		return -EINVAL;

	if (FUNC1(wiphy->addresses &&
		    !FUNC7(wiphy->perm_addr) &&
		    FUNC9(wiphy->perm_addr, wiphy->addresses[0].addr,
			   ETH_ALEN)))
		return -EINVAL;

	if (FUNC1(wiphy->max_acl_mac_addrs &&
		    (!(wiphy->flags & WIPHY_FLAG_HAVE_AP_SME) ||
		     !rdev->ops->set_mac_acl)))
		return -EINVAL;

	/* assure only valid behaviours are flagged by driver
	 * hence subtract 2 as bit 0 is invalid.
	 */
	if (FUNC1(wiphy->bss_select_support &&
		    (wiphy->bss_select_support & ~(FUNC0(__NL80211_BSS_SELECT_ATTR_AFTER_LAST) - 2))))
		return -EINVAL;

	if (FUNC1(FUNC17(&rdev->wiphy,
					    NL80211_EXT_FEATURE_4WAY_HANDSHAKE_STA_1X) &&
		    (!rdev->ops->set_pmk || !rdev->ops->del_pmk)))
		return -EINVAL;

	if (FUNC1(!(rdev->wiphy.flags & WIPHY_FLAG_SUPPORTS_FW_ROAM) &&
		    rdev->ops->update_connect_params))
		return -EINVAL;

	if (wiphy->addresses)
		FUNC10(wiphy->perm_addr, wiphy->addresses[0].addr, ETH_ALEN);

	/* sanity check ifmodes */
	FUNC1(!ifmodes);
	ifmodes &= ((1 << NUM_NL80211_IFTYPES) - 1) & ~1;
	if (FUNC1(ifmodes != wiphy->interface_modes))
		wiphy->interface_modes = ifmodes;

	res = FUNC22(wiphy);
	if (res)
		return res;

	/* sanity check supported bands/channels */
	for (band = 0; band < NUM_NL80211_BANDS; band++) {
		u16 types = 0;

		sband = wiphy->bands[band];
		if (!sband)
			continue;

		sband->band = band;
		if (FUNC1(!sband->n_channels))
			return -EINVAL;
		/*
		 * on 60GHz band, there are no legacy rates, so
		 * n_bitrates is 0
		 */
		if (FUNC1(band != NL80211_BAND_60GHZ &&
			    !sband->n_bitrates))
			return -EINVAL;

		/*
		 * Since cfg80211_disable_40mhz_24ghz is global, we can
		 * modify the sband's ht data even if the driver uses a
		 * global structure for that.
		 */
		if (cfg80211_disable_40mhz_24ghz &&
		    band == NL80211_BAND_2GHZ &&
		    sband->ht_cap.ht_supported) {
			sband->ht_cap.cap &= ~IEEE80211_HT_CAP_SUP_WIDTH_20_40;
			sband->ht_cap.cap &= ~IEEE80211_HT_CAP_SGI_40;
		}

		/*
		 * Since we use a u32 for rate bitmaps in
		 * ieee80211_get_response_rate, we cannot
		 * have more than 32 legacy rates.
		 */
		if (FUNC1(sband->n_bitrates > 32))
			return -EINVAL;

		for (i = 0; i < sband->n_channels; i++) {
			sband->channels[i].orig_flags =
				sband->channels[i].flags;
			sband->channels[i].orig_mag = INT_MAX;
			sband->channels[i].orig_mpwr =
				sband->channels[i].max_power;
			sband->channels[i].band = band;
		}

		for (i = 0; i < sband->n_iftype_data; i++) {
			const struct ieee80211_sband_iftype_data *iftd;

			iftd = &sband->iftype_data[i];

			if (FUNC1(!iftd->types_mask))
				return -EINVAL;
			if (FUNC1(types & iftd->types_mask))
				return -EINVAL;

			/* at least one piece of information must be present */
			if (FUNC1(!iftd->he_cap.has_he))
				return -EINVAL;

			types |= iftd->types_mask;
		}

		have_band = true;
	}

	if (!have_band) {
		FUNC1(1);
		return -EINVAL;
	}

	for (i = 0; i < rdev->wiphy.n_vendor_commands; i++) {
		/*
		 * Validate we have a policy (can be explicitly set to
		 * VENDOR_CMD_RAW_DATA which is non-NULL) and also that
		 * we have at least one of doit/dumpit.
		 */
		if (FUNC1(!rdev->wiphy.vendor_commands[i].policy))
			return -EINVAL;
		if (FUNC1(!rdev->wiphy.vendor_commands[i].doit &&
			    !rdev->wiphy.vendor_commands[i].dumpit))
			return -EINVAL;
	}

#ifdef CONFIG_PM
	if (WARN_ON(rdev->wiphy.wowlan && rdev->wiphy.wowlan->n_patterns &&
		    (!rdev->wiphy.wowlan->pattern_min_len ||
		     rdev->wiphy.wowlan->pattern_min_len >
				rdev->wiphy.wowlan->pattern_max_len)))
		return -EINVAL;
#endif

	/* check and set up bitrates */
	FUNC6(wiphy);

	rdev->wiphy.features |= NL80211_FEATURE_SCAN_FLUSH;

	FUNC15();
	res = FUNC4(&rdev->wiphy.dev);
	if (res) {
		FUNC16();
		return res;
	}

	/* set up regulatory info */
	FUNC19(wiphy);

	FUNC8(&rdev->list, &cfg80211_rdev_list);
	cfg80211_rdev_list_generation++;

	/* add to debugfs */
	rdev->wiphy.debugfsdir = FUNC3(FUNC18(&rdev->wiphy),
						    ieee80211_debugfs_dir);

	FUNC2(rdev);
	FUNC11(rdev, NL80211_CMD_NEW_WIPHY);

	if (wiphy->regulatory_flags & REGULATORY_CUSTOM_REG) {
		struct regulatory_request request;

		request.wiphy_idx = FUNC5(wiphy);
		request.initiator = NL80211_REGDOM_SET_BY_DRIVER;
		request.alpha2[0] = '9';
		request.alpha2[1] = '9';

		FUNC12(&request);
	}

	/* Check that nobody globally advertises any capabilities they do not
	 * advertise on all possible interface types.
	 */
	if (wiphy->extended_capabilities_len &&
	    wiphy->num_iftype_ext_capab &&
	    wiphy->iftype_ext_capab) {
		u8 supported_on_all, j;
		const struct wiphy_iftype_ext_capab *capab;

		capab = wiphy->iftype_ext_capab;
		for (j = 0; j < wiphy->extended_capabilities_len; j++) {
			if (capab[0].extended_capabilities_len > j)
				supported_on_all =
					capab[0].extended_capabilities[j];
			else
				supported_on_all = 0x00;
			for (i = 1; i < wiphy->num_iftype_ext_capab; i++) {
				if (j >= capab[i].extended_capabilities_len) {
					supported_on_all = 0x00;
					break;
				}
				supported_on_all &=
					capab[i].extended_capabilities[j];
			}
			if (FUNC1(wiphy->extended_capabilities[j] &
				    ~supported_on_all))
				break;
		}
	}

	rdev->wiphy.registered = true;
	FUNC16();

	res = FUNC14(rdev->rfkill);
	if (res) {
		FUNC13(rdev->rfkill);
		rdev->rfkill = NULL;
		FUNC21(&rdev->wiphy);
		return res;
	}

	return 0;
}