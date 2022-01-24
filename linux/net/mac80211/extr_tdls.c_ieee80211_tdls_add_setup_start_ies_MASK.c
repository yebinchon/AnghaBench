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
typedef  int /*<<< orphan*/  vht_cap ;
typedef  scalar_t__ u8 ;
struct TYPE_10__ {scalar_t__ vht_supported; scalar_t__ ht_supported; } ;
struct TYPE_9__ {TYPE_5__ vht_cap; TYPE_5__ ht_cap; } ;
struct sta_info {TYPE_4__ sta; int /*<<< orphan*/  tdls_chandef; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_vht_cap {int dummy; } ;
struct ieee80211_supported_band {TYPE_5__ vht_cap; TYPE_5__ ht_cap; int /*<<< orphan*/  band; } ;
struct TYPE_7__ {int /*<<< orphan*/  chandef; } ;
struct TYPE_8__ {TYPE_2__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_3__ vif; struct ieee80211_local* local; } ;
struct ieee80211_sta_vht_cap {int cap; scalar_t__ vht_supported; scalar_t__ ht_supported; } ;
struct ieee80211_sta_ht_cap {int cap; scalar_t__ vht_supported; scalar_t__ ht_supported; } ;
struct TYPE_6__ {scalar_t__ queues; } ;
struct ieee80211_local {int /*<<< orphan*/  sta_mtx; TYPE_1__ hw; } ;
struct ieee80211_ht_cap {int dummy; } ;
typedef  int /*<<< orphan*/  ht_cap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__ const*) ; 
 int IEEE80211_HT_CAP_SM_PS_SHIFT ; 
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ; 
 scalar_t__ IEEE80211_NUM_ACS ; 
 scalar_t__ FUNC1 (int) ; 
#define  WLAN_EID_COUNTRY 138 
#define  WLAN_EID_EXT_CAPABILITY 137 
#define  WLAN_EID_EXT_SUPP_RATES 136 
#define  WLAN_EID_FAST_BSS_TRANSITION 135 
#define  WLAN_EID_MULTI_BAND 134 
#define  WLAN_EID_QOS_CAPA 133 
#define  WLAN_EID_RSN 132 
#define  WLAN_EID_SUPPORTED_CHANNELS 131 
#define  WLAN_EID_SUPPORTED_REGULATORY_CLASSES 130 
#define  WLAN_EID_SUPP_RATES 129 
#define  WLAN_EID_TIMEOUT_INTERVAL 128 
 int WLAN_HT_CAP_SM_PS_DISABLED ; 
 scalar_t__ WLAN_PUB_ACTION_TDLS_DISCOVER_RES ; 
 int /*<<< orphan*/  WLAN_STA_TDLS_WIDER_BW ; 
 scalar_t__ WLAN_TDLS_SETUP_REQUEST ; 
 scalar_t__ WLAN_TDLS_SETUP_RESPONSE ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,struct ieee80211_sta_vht_cap*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,struct ieee80211_sta_vht_cap*) ; 
 struct ieee80211_supported_band* FUNC7 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,struct ieee80211_sta_vht_cap*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,struct ieee80211_sta_vht_cap*,int) ; 
 size_t FUNC10 (scalar_t__ const*,size_t,scalar_t__ const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_sub_if_data*,struct sk_buff*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_sub_if_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_sta_vht_cap*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC21 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,scalar_t__ const*,size_t) ; 
 struct sta_info* FUNC23 (struct ieee80211_sub_if_data*,scalar_t__ const*) ; 
 scalar_t__ FUNC24 (struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC25(struct ieee80211_sub_if_data *sdata,
				   struct sk_buff *skb, const u8 *peer,
				   u8 action_code, bool initiator,
				   const u8 *extra_ies, size_t extra_ies_len)
{
	struct ieee80211_supported_band *sband;
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_sta_ht_cap ht_cap;
	struct ieee80211_sta_vht_cap vht_cap;
	struct sta_info *sta = NULL;
	size_t offset = 0, noffset;
	u8 *pos;

	sband = FUNC7(sdata);
	if (!sband)
		return;

	FUNC3(sdata, skb, false, sband->band);
	FUNC2(sdata, skb, false, sband->band);
	FUNC16(sdata, skb);

	/* add any custom IEs that go before Extended Capabilities */
	if (extra_ies_len) {
		static const u8 before_ext_cap[] = {
			WLAN_EID_SUPP_RATES,
			WLAN_EID_COUNTRY,
			WLAN_EID_EXT_SUPP_RATES,
			WLAN_EID_SUPPORTED_CHANNELS,
			WLAN_EID_RSN,
		};
		noffset = FUNC10(extra_ies, extra_ies_len,
					     before_ext_cap,
					     FUNC0(before_ext_cap),
					     offset);
		FUNC22(skb, extra_ies + offset, noffset - offset);
		offset = noffset;
	}

	FUNC13(sdata, skb);

	/* add the QoS element if we support it */
	if (local->hw.queues >= IEEE80211_NUM_ACS &&
	    action_code != WLAN_PUB_ACTION_TDLS_DISCOVER_RES)
		FUNC4(FUNC21(skb, 9), 0); /* no U-APSD */

	/* add any custom IEs that go before HT capabilities */
	if (extra_ies_len) {
		static const u8 before_ht_cap[] = {
			WLAN_EID_SUPP_RATES,
			WLAN_EID_COUNTRY,
			WLAN_EID_EXT_SUPP_RATES,
			WLAN_EID_SUPPORTED_CHANNELS,
			WLAN_EID_RSN,
			WLAN_EID_EXT_CAPABILITY,
			WLAN_EID_QOS_CAPA,
			WLAN_EID_FAST_BSS_TRANSITION,
			WLAN_EID_TIMEOUT_INTERVAL,
			WLAN_EID_SUPPORTED_REGULATORY_CLASSES,
		};
		noffset = FUNC10(extra_ies, extra_ies_len,
					     before_ht_cap,
					     FUNC0(before_ht_cap),
					     offset);
		FUNC22(skb, extra_ies + offset, noffset - offset);
		offset = noffset;
	}

	FUNC19(&local->sta_mtx);

	/* we should have the peer STA if we're already responding */
	if (action_code == WLAN_TDLS_SETUP_RESPONSE) {
		sta = FUNC23(sdata, peer);
		if (FUNC1(!sta)) {
			FUNC20(&local->sta_mtx);
			return;
		}

		sta->tdls_chandef = sdata->vif.bss_conf.chandef;
	}

	FUNC15(sdata, skb);

	/*
	 * with TDLS we can switch channels, and HT-caps are not necessarily
	 * the same on all bands. The specification limits the setup to a
	 * single HT-cap, so use the current band for now.
	 */
	FUNC18(&ht_cap, &sband->ht_cap, sizeof(ht_cap));

	if ((action_code == WLAN_TDLS_SETUP_REQUEST ||
	     action_code == WLAN_PUB_ACTION_TDLS_DISCOVER_RES) &&
	    ht_cap.ht_supported) {
		FUNC5(sdata, &ht_cap);

		/* disable SMPS in TDLS initiator */
		ht_cap.cap |= WLAN_HT_CAP_SM_PS_DISABLED
				<< IEEE80211_HT_CAP_SM_PS_SHIFT;

		pos = FUNC21(skb, sizeof(struct ieee80211_ht_cap) + 2);
		FUNC8(pos, &ht_cap, ht_cap.cap);
	} else if (action_code == WLAN_TDLS_SETUP_RESPONSE &&
		   ht_cap.ht_supported && sta->sta.ht_cap.ht_supported) {
		/* the peer caps are already intersected with our own */
		FUNC18(&ht_cap, &sta->sta.ht_cap, sizeof(ht_cap));

		pos = FUNC21(skb, sizeof(struct ieee80211_ht_cap) + 2);
		FUNC8(pos, &ht_cap, ht_cap.cap);
	}

	if (ht_cap.ht_supported &&
	    (ht_cap.cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40))
		FUNC12(skb);

	FUNC14(sdata, skb, peer, initiator);

	/* add any custom IEs that go before VHT capabilities */
	if (extra_ies_len) {
		static const u8 before_vht_cap[] = {
			WLAN_EID_SUPP_RATES,
			WLAN_EID_COUNTRY,
			WLAN_EID_EXT_SUPP_RATES,
			WLAN_EID_SUPPORTED_CHANNELS,
			WLAN_EID_RSN,
			WLAN_EID_EXT_CAPABILITY,
			WLAN_EID_QOS_CAPA,
			WLAN_EID_FAST_BSS_TRANSITION,
			WLAN_EID_TIMEOUT_INTERVAL,
			WLAN_EID_SUPPORTED_REGULATORY_CLASSES,
			WLAN_EID_MULTI_BAND,
		};
		noffset = FUNC10(extra_ies, extra_ies_len,
					     before_vht_cap,
					     FUNC0(before_vht_cap),
					     offset);
		FUNC22(skb, extra_ies + offset, noffset - offset);
		offset = noffset;
	}

	/* build the VHT-cap similarly to the HT-cap */
	FUNC18(&vht_cap, &sband->vht_cap, sizeof(vht_cap));
	if ((action_code == WLAN_TDLS_SETUP_REQUEST ||
	     action_code == WLAN_PUB_ACTION_TDLS_DISCOVER_RES) &&
	    vht_cap.vht_supported) {
		FUNC6(sdata, &vht_cap);

		/* the AID is present only when VHT is implemented */
		if (action_code == WLAN_TDLS_SETUP_REQUEST)
			FUNC11(sdata, skb);

		pos = FUNC21(skb, sizeof(struct ieee80211_vht_cap) + 2);
		FUNC9(pos, &vht_cap, vht_cap.cap);
	} else if (action_code == WLAN_TDLS_SETUP_RESPONSE &&
		   vht_cap.vht_supported && sta->sta.vht_cap.vht_supported) {
		/* the peer caps are already intersected with our own */
		FUNC18(&vht_cap, &sta->sta.vht_cap, sizeof(vht_cap));

		/* the AID is present only when VHT is implemented */
		FUNC11(sdata, skb);

		pos = FUNC21(skb, sizeof(struct ieee80211_vht_cap) + 2);
		FUNC9(pos, &vht_cap, vht_cap.cap);

		/*
		 * if both peers support WIDER_BW, we can expand the chandef to
		 * a wider compatible one, up to 80MHz
		 */
		if (FUNC24(sta, WLAN_STA_TDLS_WIDER_BW))
			FUNC17(sdata, sta);
	}

	FUNC20(&local->sta_mtx);

	/* add any remaining IEs */
	if (extra_ies_len) {
		noffset = extra_ies_len;
		FUNC22(skb, extra_ies + offset, noffset - offset);
	}

}