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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_11__ {int /*<<< orphan*/ * remote_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/ * bssid; } ;
struct TYPE_7__ {int /*<<< orphan*/  use_4addr; } ;
struct TYPE_12__ {TYPE_5__ wds; TYPE_2__ ibss; TYPE_1__ mgd; } ;
struct TYPE_10__ {int type; int /*<<< orphan*/ * addr; } ;
struct ieee80211_sub_if_data {TYPE_6__ u; TYPE_4__ vif; TYPE_3__* dev; } ;
struct ieee80211_rx_status {int rate_idx; int /*<<< orphan*/  encoding; } ;
struct ieee80211_rx_data {int /*<<< orphan*/  sta; struct sk_buff* skb; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr1; } ;
struct TYPE_9__ {int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ieee80211_rx_status* FUNC1 (struct sk_buff*) ; 
#define  NL80211_IFTYPE_ADHOC 136 
#define  NL80211_IFTYPE_AP 135 
#define  NL80211_IFTYPE_AP_VLAN 134 
#define  NL80211_IFTYPE_MESH_POINT 133 
#define  NL80211_IFTYPE_NAN 132 
#define  NL80211_IFTYPE_OCB 131 
#define  NL80211_IFTYPE_P2P_DEVICE 130 
#define  NL80211_IFTYPE_STATION 129 
#define  NL80211_IFTYPE_WDS 128 
 int /*<<< orphan*/  RX_ENC_LEGACY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct ieee80211_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC19(struct ieee80211_rx_data *rx)
{
	struct ieee80211_sub_if_data *sdata = rx->sdata;
	struct sk_buff *skb = rx->skb;
	struct ieee80211_hdr *hdr = (void *)skb->data;
	struct ieee80211_rx_status *status = FUNC1(skb);
	u8 *bssid = FUNC5(hdr, skb->len, sdata->vif.type);
	bool multicast = FUNC18(hdr->addr1);

	switch (sdata->vif.type) {
	case NL80211_IFTYPE_STATION:
		if (!bssid && !sdata->u.mgd.use_4addr)
			return false;
		if (FUNC15(skb) && !rx->sta)
			return false;
		if (multicast)
			return true;
		return FUNC3(sdata->vif.addr, hdr->addr1);
	case NL80211_IFTYPE_ADHOC:
		if (!bssid)
			return false;
		if (FUNC3(sdata->vif.addr, hdr->addr2) ||
		    FUNC3(sdata->u.ibss.bssid, hdr->addr2))
			return false;
		if (FUNC9(hdr->frame_control))
			return true;
		if (!FUNC4(bssid, sdata->u.ibss.bssid))
			return false;
		if (!multicast &&
		    !FUNC3(sdata->vif.addr, hdr->addr1))
			return false;
		if (!rx->sta) {
			int rate_idx;
			if (status->encoding != RX_ENC_LEGACY)
				rate_idx = 0; /* TODO: HT/VHT rates */
			else
				rate_idx = status->rate_idx;
			FUNC7(sdata, bssid, hdr->addr2,
						 FUNC0(rate_idx));
		}
		return true;
	case NL80211_IFTYPE_OCB:
		if (!bssid)
			return false;
		if (!FUNC11(hdr->frame_control))
			return false;
		if (!FUNC17(bssid))
			return false;
		if (!multicast &&
		    !FUNC3(sdata->dev->dev_addr, hdr->addr1))
			return false;
		if (!rx->sta) {
			int rate_idx;
			if (status->encoding != RX_ENC_LEGACY)
				rate_idx = 0; /* TODO: HT rates */
			else
				rate_idx = status->rate_idx;
			FUNC16(sdata, bssid, hdr->addr2,
						FUNC0(rate_idx));
		}
		return true;
	case NL80211_IFTYPE_MESH_POINT:
		if (FUNC3(sdata->vif.addr, hdr->addr2))
			return false;
		if (multicast)
			return true;
		return FUNC3(sdata->vif.addr, hdr->addr1);
	case NL80211_IFTYPE_AP_VLAN:
	case NL80211_IFTYPE_AP:
		if (!bssid)
			return FUNC3(sdata->vif.addr, hdr->addr1);

		if (!FUNC4(bssid, sdata->vif.addr)) {
			/*
			 * Accept public action frames even when the
			 * BSSID doesn't match, this is used for P2P
			 * and location updates. Note that mac80211
			 * itself never looks at these frames.
			 */
			if (!multicast &&
			    !FUNC3(sdata->vif.addr, hdr->addr1))
				return false;
			if (FUNC14(hdr, skb->len))
				return true;
			return FUNC9(hdr->frame_control);
		}

		if (!FUNC6(hdr->frame_control)) {
			/* ignore data frames to TDLS-peers */
			if (FUNC10(hdr->frame_control))
				return false;
			/* ignore action frames to TDLS-peers */
			if (FUNC8(hdr->frame_control) &&
			    !FUNC17(bssid) &&
			    !FUNC3(bssid, hdr->addr1))
				return false;
		}

		/*
		 * 802.11-2016 Table 9-26 says that for data frames, A1 must be
		 * the BSSID - we've checked that already but may have accepted
		 * the wildcard (ff:ff:ff:ff:ff:ff).
		 *
		 * It also says:
		 *	The BSSID of the Data frame is determined as follows:
		 *	a) If the STA is contained within an AP or is associated
		 *	   with an AP, the BSSID is the address currently in use
		 *	   by the STA contained in the AP.
		 *
		 * So we should not accept data frames with an address that's
		 * multicast.
		 *
		 * Accepting it also opens a security problem because stations
		 * could encrypt it with the GTK and inject traffic that way.
		 */
		if (FUNC10(hdr->frame_control) && multicast)
			return false;

		return true;
	case NL80211_IFTYPE_WDS:
		if (bssid || !FUNC10(hdr->frame_control))
			return false;
		return FUNC3(sdata->u.wds.remote_addr, hdr->addr2);
	case NL80211_IFTYPE_P2P_DEVICE:
		return FUNC14(hdr, skb->len) ||
		       FUNC12(hdr->frame_control) ||
		       FUNC13(hdr->frame_control) ||
		       FUNC9(hdr->frame_control);
	case NL80211_IFTYPE_NAN:
		/* Currently no frames on NAN interface are allowed */
		return false;
	default:
		break;
	}

	FUNC2(1);
	return false;
}