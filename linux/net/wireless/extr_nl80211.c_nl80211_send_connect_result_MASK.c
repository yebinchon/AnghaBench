#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  wiphy_idx; } ;
struct TYPE_2__ {scalar_t__ erp_next_seq_num; scalar_t__ pmkid; scalar_t__ pmk; scalar_t__ pmk_len; scalar_t__ kek; scalar_t__ kek_len; scalar_t__ update_erp_next_seq_num; } ;
struct cfg80211_connect_resp_params {scalar_t__ status; TYPE_1__ fils; scalar_t__ resp_ie; scalar_t__ resp_ie_len; scalar_t__ req_ie; scalar_t__ req_ie_len; int /*<<< orphan*/  timeout_reason; scalar_t__ bssid; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM ; 
 int /*<<< orphan*/  NL80211_ATTR_FILS_KEK ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_PMK ; 
 int /*<<< orphan*/  NL80211_ATTR_PMKID ; 
 int /*<<< orphan*/  NL80211_ATTR_REQ_IE ; 
 int /*<<< orphan*/  NL80211_ATTR_RESP_IE ; 
 int /*<<< orphan*/  NL80211_ATTR_STATUS_CODE ; 
 int /*<<< orphan*/  NL80211_ATTR_TIMED_OUT ; 
 int /*<<< orphan*/  NL80211_ATTR_TIMEOUT_REASON ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_CONNECT ; 
 int /*<<< orphan*/  NL80211_MCGRP_MLME ; 
 scalar_t__ WLAN_PMKID_LEN ; 
 scalar_t__ WLAN_STATUS_SUCCESS ; 
 scalar_t__ WLAN_STATUS_UNSPECIFIED_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct cfg80211_registered_device *rdev,
				 struct net_device *netdev,
				 struct cfg80211_connect_resp_params *cr,
				 gfp_t gfp)
{
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC8(100 + cr->req_ie_len + cr->resp_ie_len +
			cr->fils.kek_len + cr->fils.pmk_len +
			(cr->fils.pmkid ? WLAN_PMKID_LEN : 0), gfp);
	if (!msg)
		return;

	hdr = FUNC2(msg, 0, 0, 0, NL80211_CMD_CONNECT);
	if (!hdr) {
		FUNC7(msg);
		return;
	}

	if (FUNC6(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC6(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
	    (cr->bssid &&
	     FUNC3(msg, NL80211_ATTR_MAC, ETH_ALEN, cr->bssid)) ||
	    FUNC5(msg, NL80211_ATTR_STATUS_CODE,
			cr->status < 0 ? WLAN_STATUS_UNSPECIFIED_FAILURE :
			cr->status) ||
	    (cr->status < 0 &&
	     (FUNC4(msg, NL80211_ATTR_TIMED_OUT) ||
	      FUNC6(msg, NL80211_ATTR_TIMEOUT_REASON,
			  cr->timeout_reason))) ||
	    (cr->req_ie &&
	     FUNC3(msg, NL80211_ATTR_REQ_IE, cr->req_ie_len, cr->req_ie)) ||
	    (cr->resp_ie &&
	     FUNC3(msg, NL80211_ATTR_RESP_IE, cr->resp_ie_len,
		     cr->resp_ie)) ||
	    (cr->fils.update_erp_next_seq_num &&
	     FUNC5(msg, NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM,
			 cr->fils.erp_next_seq_num)) ||
	    (cr->status == WLAN_STATUS_SUCCESS &&
	     ((cr->fils.kek &&
	       FUNC3(msg, NL80211_ATTR_FILS_KEK, cr->fils.kek_len,
		       cr->fils.kek)) ||
	      (cr->fils.pmk &&
	       FUNC3(msg, NL80211_ATTR_PMK, cr->fils.pmk_len, cr->fils.pmk)) ||
	      (cr->fils.pmkid &&
	       FUNC3(msg, NL80211_ATTR_PMKID, WLAN_PMKID_LEN, cr->fils.pmkid)))))
		goto nla_put_failure;

	FUNC0(msg, hdr);

	FUNC1(&nl80211_fam, FUNC9(&rdev->wiphy), msg, 0,
				NL80211_MCGRP_MLME, gfp);
	return;

 nla_put_failure:
	FUNC7(msg);
}