#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct TYPE_4__ {int /*<<< orphan*/  const* pmkid; int /*<<< orphan*/  const* pmk; scalar_t__ pmk_len; int /*<<< orphan*/  const* kek; scalar_t__ kek_len; int /*<<< orphan*/  erp_next_seq_num; scalar_t__ update_erp_next_seq_num; } ;
struct cfg80211_roam_info {TYPE_2__ fils; int /*<<< orphan*/  const* resp_ie; scalar_t__ resp_ie_len; int /*<<< orphan*/  const* req_ie; scalar_t__ req_ie_len; int /*<<< orphan*/ * bssid; TYPE_1__* bss; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  wiphy_idx; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {int /*<<< orphan*/ * bssid; } ;

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
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_ROAM ; 
 int /*<<< orphan*/  NL80211_MCGRP_MLME ; 
 scalar_t__ WLAN_PMKID_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct cfg80211_registered_device *rdev,
			 struct net_device *netdev,
			 struct cfg80211_roam_info *info, gfp_t gfp)
{
	struct sk_buff *msg;
	void *hdr;
	const u8 *bssid = info->bss ? info->bss->bssid : info->bssid;

	msg = FUNC7(100 + info->req_ie_len + info->resp_ie_len +
			info->fils.kek_len + info->fils.pmk_len +
			(info->fils.pmkid ? WLAN_PMKID_LEN : 0), gfp);
	if (!msg)
		return;

	hdr = FUNC2(msg, 0, 0, 0, NL80211_CMD_ROAM);
	if (!hdr) {
		FUNC6(msg);
		return;
	}

	if (FUNC5(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC5(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
	    FUNC3(msg, NL80211_ATTR_MAC, ETH_ALEN, bssid) ||
	    (info->req_ie &&
	     FUNC3(msg, NL80211_ATTR_REQ_IE, info->req_ie_len,
		     info->req_ie)) ||
	    (info->resp_ie &&
	     FUNC3(msg, NL80211_ATTR_RESP_IE, info->resp_ie_len,
		     info->resp_ie)) ||
	    (info->fils.update_erp_next_seq_num &&
	     FUNC4(msg, NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM,
			 info->fils.erp_next_seq_num)) ||
	    (info->fils.kek &&
	     FUNC3(msg, NL80211_ATTR_FILS_KEK, info->fils.kek_len,
		     info->fils.kek)) ||
	    (info->fils.pmk &&
	     FUNC3(msg, NL80211_ATTR_PMK, info->fils.pmk_len, info->fils.pmk)) ||
	    (info->fils.pmkid &&
	     FUNC3(msg, NL80211_ATTR_PMKID, WLAN_PMKID_LEN, info->fils.pmkid)))
		goto nla_put_failure;

	FUNC0(msg, hdr);

	FUNC1(&nl80211_fam, FUNC8(&rdev->wiphy), msg, 0,
				NL80211_MCGRP_MLME, gfp);
	return;

 nla_put_failure:
	FUNC6(msg);
}