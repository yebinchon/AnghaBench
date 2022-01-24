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
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; TYPE_1__* ieee80211_ptr; } ;
struct cfg80211_update_owe_info {int /*<<< orphan*/  ie; int /*<<< orphan*/  ie_len; int /*<<< orphan*/  peer; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  wiphy_idx; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct wiphy* wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_IE ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_UPDATE_OWE_INFO ; 
 int /*<<< orphan*/  NL80211_MCGRP_MLME ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wiphy*,struct net_device*,struct cfg80211_update_owe_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC10 (struct wiphy*) ; 

void FUNC11(struct net_device *netdev,
				    struct cfg80211_update_owe_info *owe_info,
				    gfp_t gfp)
{
	struct wiphy *wiphy = netdev->ieee80211_ptr->wiphy;
	struct cfg80211_registered_device *rdev = FUNC10(wiphy);
	struct sk_buff *msg;
	void *hdr;

	FUNC8(wiphy, netdev, owe_info);

	msg = FUNC7(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC3(msg, 0, 0, 0, NL80211_CMD_UPDATE_OWE_INFO);
	if (!hdr)
		goto nla_put_failure;

	if (FUNC5(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC5(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
	    FUNC4(msg, NL80211_ATTR_MAC, ETH_ALEN, owe_info->peer))
		goto nla_put_failure;

	if (!owe_info->ie_len ||
	    FUNC4(msg, NL80211_ATTR_IE, owe_info->ie_len, owe_info->ie))
		goto nla_put_failure;

	FUNC1(msg, hdr);

	FUNC2(&nl80211_fam, FUNC9(&rdev->wiphy), msg, 0,
				NL80211_MCGRP_MLME, gfp);
	return;

nla_put_failure:
	FUNC0(msg, hdr);
	FUNC6(msg);
}