#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sta_info {int dummy; } ;
struct ieee802_11_elems {int ext_capab_len; int* ext_capab; int /*<<< orphan*/  cisco_dtpc_elem; int /*<<< orphan*/  pwr_constr_elem; int /*<<< orphan*/  country_elem_len; int /*<<< orphan*/  country_elem; int /*<<< orphan*/ * opmode_notif; int /*<<< orphan*/  he_operation; int /*<<< orphan*/  vht_operation; int /*<<< orphan*/  ht_operation; int /*<<< orphan*/  ht_cap_elem; int /*<<< orphan*/ * erp_info; scalar_t__ dtim_period; int /*<<< orphan*/  mu_edca_param_set; int /*<<< orphan*/  wmm_param_len; int /*<<< orphan*/  wmm_param; int /*<<< orphan*/  dtim_count; int /*<<< orphan*/  tim_len; int /*<<< orphan*/  tim; TYPE_1__* mbssid_config_ie; } ;
struct ieee80211_bss_conf {int ema_ap; int dtim_period; int /*<<< orphan*/  sync_dtim_count; int /*<<< orphan*/  sync_device_ts; void* sync_tsf; int /*<<< orphan*/  p2p_noa_attr; int /*<<< orphan*/  profile_periodicity; } ;
struct TYPE_18__ {int driver_flags; struct ieee80211_bss_conf bss_conf; scalar_t__ p2p; int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_if_managed {int have_beacon; int flags; scalar_t__ p2p_noa_index; int beacon_crc_valid; scalar_t__ beacon_crc; scalar_t__ csa_waiting_bcn; scalar_t__ powersave; int /*<<< orphan*/  aid; TYPE_9__* associated; TYPE_2__* assoc_data; scalar_t__ dtim_period; } ;
struct TYPE_15__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_7__ vif; TYPE_4__ u; struct ieee80211_local* local; } ;
struct ieee80211_rx_status {scalar_t__ freq; int flag; int /*<<< orphan*/  band; int /*<<< orphan*/  device_timestamp; int /*<<< orphan*/  mactime; } ;
struct ieee80211_p2p_noa_attr {scalar_t__ index; } ;
struct TYPE_16__ {int /*<<< orphan*/  capab_info; int /*<<< orphan*/  timestamp; scalar_t__ variable; int /*<<< orphan*/  beacon_int; } ;
struct TYPE_17__ {TYPE_5__ beacon; } ;
struct ieee80211_mgmt {TYPE_6__ u; int /*<<< orphan*/  bssid; } ;
struct TYPE_14__ {scalar_t__ dynamic_ps_timeout; int flags; } ;
struct TYPE_11__ {TYPE_3__ conf; } ;
struct ieee80211_local {int pspolling; int /*<<< orphan*/  sta_mtx; int /*<<< orphan*/  iflist_mtx; TYPE_10__ hw; } ;
struct ieee80211_channel {scalar_t__ center_freq; } ;
struct TYPE_19__ {struct ieee80211_channel* chan; } ;
struct ieee80211_chanctx_conf {TYPE_8__ def; } ;
typedef  int /*<<< orphan*/  noa ;
typedef  int /*<<< orphan*/  deauth_buf ;
struct TYPE_20__ {int /*<<< orphan*/ * bssid; } ;
struct TYPE_13__ {int need_beacon; int timeout_started; int /*<<< orphan*/  timeout; TYPE_9__* bss; } ;
struct TYPE_12__ {int /*<<< orphan*/  profile_periodicity; } ;

/* Variables and functions */
 scalar_t__ BSS_CHANGED_BEACON_INFO ; 
 scalar_t__ BSS_CHANGED_P2P_PS ; 
 scalar_t__ BSS_CHANGED_QOS ; 
 int /*<<< orphan*/  IEEE80211_CONF_CHANGE_PS ; 
 int IEEE80211_CONF_PS ; 
 int IEEE80211_DEAUTH_FRAME_LEN ; 
 int /*<<< orphan*/  IEEE80211_P2P_ATTR_ABSENCE_NOTICE ; 
 int IEEE80211_STA_CONNECTION_POLL ; 
 int IEEE80211_STA_DISABLE_WMM ; 
 int /*<<< orphan*/  IEEE80211_STYPE_DEAUTH ; 
 int IEEE80211_VIF_GET_NOA_UPDATE ; 
 int /*<<< orphan*/  PS_NULLFUNC_STACK ; 
 int RX_FLAG_NO_SIGNAL_VAL ; 
 int /*<<< orphan*/  TIMING_BEACON_ONLY ; 
 int WLAN_EXT_CAPA11_EMA_SUPPORT ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  care_about_ies ; 
 int FUNC0 (scalar_t__,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ FUNC5 (struct ieee80211_sub_if_data*,struct sta_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,struct ieee80211_if_managed*,struct ieee80211_bss_conf*,struct ieee80211_local*,struct ieee80211_rx_status*) ; 
 scalar_t__ FUNC7 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ieee80211_sub_if_data*,struct ieee80211_channel*,struct ieee80211_mgmt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ FUNC13 (struct ieee80211_sub_if_data*,struct sta_info*,struct ieee802_11_elems*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,size_t,struct ieee80211_rx_status*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC20 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee802_11_elems*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ FUNC23 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct ieee80211_sub_if_data*,struct sta_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,size_t,int,struct ieee802_11_elems*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (scalar_t__,size_t,int,struct ieee802_11_elems*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 void* FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,struct ieee80211_p2p_noa_attr*,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (struct ieee80211_sub_if_data*,char*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 struct ieee80211_chanctx_conf* FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC39 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC40 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC41(struct ieee80211_sub_if_data *sdata,
				     struct ieee80211_mgmt *mgmt, size_t len,
				     struct ieee80211_rx_status *rx_status)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	struct ieee80211_bss_conf *bss_conf = &sdata->vif.bss_conf;
	size_t baselen;
	struct ieee802_11_elems elems;
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_chanctx_conf *chanctx_conf;
	struct ieee80211_channel *chan;
	struct sta_info *sta;
	u32 changed = 0;
	bool erp_valid;
	u8 erp_value = 0;
	u32 ncrc;
	u8 *bssid;
	u8 deauth_buf[IEEE80211_DEAUTH_FRAME_LEN];

	FUNC38(sdata);

	/* Process beacon from the current BSS */
	baselen = (u8 *) mgmt->u.beacon.variable - (u8 *) mgmt;
	if (baselen > len)
		return;

	FUNC35();
	chanctx_conf = FUNC34(sdata->vif.chanctx_conf);
	if (!chanctx_conf) {
		FUNC36();
		return;
	}

	if (rx_status->freq != chanctx_conf->def.chan->center_freq) {
		FUNC36();
		return;
	}
	chan = chanctx_conf->def.chan;
	FUNC36();

	if (ifmgd->assoc_data && ifmgd->assoc_data->need_beacon &&
	    FUNC17(mgmt->bssid, ifmgd->assoc_data->bss)) {
		FUNC25(mgmt->u.beacon.variable,
				       len - baselen, false, &elems,
				       mgmt->bssid,
				       ifmgd->assoc_data->bss->bssid);

		FUNC16(sdata, mgmt, len, rx_status);

		if (elems.dtim_period)
			ifmgd->dtim_period = elems.dtim_period;
		ifmgd->have_beacon = true;
		ifmgd->assoc_data->need_beacon = false;
		if (FUNC9(&local->hw, TIMING_BEACON_ONLY)) {
			sdata->vif.bss_conf.sync_tsf =
				FUNC28(mgmt->u.beacon.timestamp);
			sdata->vif.bss_conf.sync_device_ts =
				rx_status->device_timestamp;
			sdata->vif.bss_conf.sync_dtim_count = elems.dtim_count;
		}

		if (elems.mbssid_config_ie)
			bss_conf->profile_periodicity =
				elems.mbssid_config_ie->profile_periodicity;

		if (elems.ext_capab_len >= 11 &&
		    (elems.ext_capab[10] & WLAN_EXT_CAPA11_EMA_SUPPORT))
			bss_conf->ema_ap = true;

		/* continue assoc process */
		ifmgd->assoc_data->timeout = jiffies;
		ifmgd->assoc_data->timeout_started = true;
		FUNC37(sdata, ifmgd->assoc_data->timeout);
		return;
	}

	if (!ifmgd->associated ||
	    !FUNC17(mgmt->bssid,  ifmgd->associated))
		return;
	bssid = ifmgd->associated->bssid;

	if (!(rx_status->flag & RX_FLAG_NO_SIGNAL_VAL))
		FUNC6(sdata, ifmgd, bss_conf,
					    local, rx_status);

	if (ifmgd->flags & IEEE80211_STA_CONNECTION_POLL) {
		FUNC31(sdata,
				     "cancelling AP probe due to a received beacon\n");
		FUNC15(sdata);
	}

	/*
	 * Push the beacon loss detection into the future since
	 * we are processing a beacon from the AP just now.
	 */
	FUNC22(sdata);

	ncrc = FUNC1(0, (void *)&mgmt->u.beacon.beacon_int, 4);
	ncrc = FUNC26(mgmt->u.beacon.variable,
					  len - baselen, false, &elems,
					  care_about_ies, ncrc,
					  mgmt->bssid, bssid);

	if (FUNC9(&local->hw, PS_NULLFUNC_STACK) &&
	    FUNC3(elems.tim, elems.tim_len, ifmgd->aid)) {
		if (local->hw.conf.dynamic_ps_timeout > 0) {
			if (local->hw.conf.flags & IEEE80211_CONF_PS) {
				local->hw.conf.flags &= ~IEEE80211_CONF_PS;
				FUNC10(local,
						    IEEE80211_CONF_CHANGE_PS);
			}
			FUNC18(local, sdata, false);
		} else if (!local->pspolling && sdata->u.mgd.powersave) {
			local->pspolling = true;

			/*
			 * Here is assumed that the driver will be
			 * able to send ps-poll frame and receive a
			 * response even though power save mode is
			 * enabled, but some drivers might require
			 * to disable power save here. This needs
			 * to be investigated.
			 */
			FUNC19(local, sdata);
		}
	}

	if (sdata->vif.p2p ||
	    sdata->vif.driver_flags & IEEE80211_VIF_GET_NOA_UPDATE) {
		struct ieee80211_p2p_noa_attr noa = {};
		int ret;

		ret = FUNC0(mgmt->u.beacon.variable,
					    len - baselen,
					    IEEE80211_P2P_ATTR_ABSENCE_NOTICE,
					    (u8 *) &noa, sizeof(noa));
		if (ret >= 2) {
			if (sdata->u.mgd.p2p_noa_index != noa.index) {
				/* valid noa_attr and index changed */
				sdata->u.mgd.p2p_noa_index = noa.index;
				FUNC29(&bss_conf->p2p_noa_attr, &noa, sizeof(noa));
				changed |= BSS_CHANGED_P2P_PS;
				/*
				 * make sure we update all information, the CRC
				 * mechanism doesn't look at P2P attributes.
				 */
				ifmgd->beacon_crc_valid = false;
			}
		} else if (sdata->u.mgd.p2p_noa_index != -1) {
			/* noa_attr not found and we had valid noa_attr before */
			sdata->u.mgd.p2p_noa_index = -1;
			FUNC30(&bss_conf->p2p_noa_attr, 0, sizeof(bss_conf->p2p_noa_attr));
			changed |= BSS_CHANGED_P2P_PS;
			ifmgd->beacon_crc_valid = false;
		}
	}

	if (ifmgd->csa_waiting_bcn)
		FUNC4(sdata);

	/*
	 * Update beacon timing and dtim count on every beacon appearance. This
	 * will allow the driver to use the most updated values. Do it before
	 * comparing this one with last received beacon.
	 * IMPORTANT: These parameters would possibly be out of sync by the time
	 * the driver will use them. The synchronized view is currently
	 * guaranteed only in certain callbacks.
	 */
	if (FUNC9(&local->hw, TIMING_BEACON_ONLY)) {
		sdata->vif.bss_conf.sync_tsf =
			FUNC28(mgmt->u.beacon.timestamp);
		sdata->vif.bss_conf.sync_device_ts =
			rx_status->device_timestamp;
		sdata->vif.bss_conf.sync_dtim_count = elems.dtim_count;
	}

	if (ncrc == ifmgd->beacon_crc && ifmgd->beacon_crc_valid)
		return;
	ifmgd->beacon_crc = ncrc;
	ifmgd->beacon_crc_valid = true;

	FUNC16(sdata, mgmt, len, rx_status);

	FUNC21(sdata, rx_status->mactime,
					 rx_status->device_timestamp,
					 &elems, true);

	if (!(ifmgd->flags & IEEE80211_STA_DISABLE_WMM) &&
	    FUNC23(local, sdata, elems.wmm_param,
				     elems.wmm_param_len,
				     elems.mu_edca_param_set))
		changed |= BSS_CHANGED_QOS;

	/*
	 * If we haven't had a beacon before, tell the driver about the
	 * DTIM period (and beacon timing if desired) now.
	 */
	if (!ifmgd->have_beacon) {
		/* a few bogus AP send dtim_period = 0 or no TIM IE */
		bss_conf->dtim_period = elems.dtim_period ?: 1;

		changed |= BSS_CHANGED_BEACON_INFO;
		ifmgd->have_beacon = true;

		FUNC32(&local->iflist_mtx);
		FUNC11(local);
		FUNC33(&local->iflist_mtx);

		FUNC12(sdata);
	}

	if (elems.erp_info) {
		erp_valid = true;
		erp_value = elems.erp_info[0];
	} else {
		erp_valid = false;
	}
	changed |= FUNC7(sdata,
			FUNC27(mgmt->u.beacon.capab_info),
			erp_valid, erp_value);

	FUNC32(&local->sta_mtx);
	sta = FUNC40(sdata, bssid);

	changed |= FUNC13(sdata, sta, &elems);

	if (FUNC5(sdata, sta,
				elems.ht_cap_elem, elems.ht_operation,
				elems.vht_operation, elems.he_operation,
				bssid, &changed)) {
		FUNC33(&local->sta_mtx);
		FUNC39(sdata,
			   "failed to follow AP %pM bandwidth change, disconnect\n",
			   bssid);
		FUNC20(sdata, IEEE80211_STYPE_DEAUTH,
				       WLAN_REASON_DEAUTH_LEAVING,
				       true, deauth_buf);
		FUNC14(sdata, deauth_buf,
					    sizeof(deauth_buf), true,
					    WLAN_REASON_DEAUTH_LEAVING);
		return;
	}

	if (sta && elems.opmode_notif)
		FUNC24(sdata, sta, *elems.opmode_notif,
					    rx_status->band);
	FUNC33(&local->sta_mtx);

	changed |= FUNC8(sdata, chan, mgmt,
					       elems.country_elem,
					       elems.country_elem_len,
					       elems.pwr_constr_elem,
					       elems.cisco_dtpc_elem);

	FUNC2(sdata, changed);
}