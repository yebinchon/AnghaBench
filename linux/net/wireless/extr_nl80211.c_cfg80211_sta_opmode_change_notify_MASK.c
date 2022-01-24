#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wireless_dev {int /*<<< orphan*/  wiphy; } ;
struct sta_opmode_info {int changed; int /*<<< orphan*/  rx_nss; int /*<<< orphan*/  bw; int /*<<< orphan*/  smps_mode; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  wiphy_idx; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_CHANNEL_WIDTH ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_NSS ; 
 int /*<<< orphan*/  NL80211_ATTR_SMPS_MODE ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_STA_OPMODE_CHANGED ; 
 int /*<<< orphan*/  NL80211_MCGRP_MLME ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int STA_OPMODE_MAX_BW_CHANGED ; 
 int STA_OPMODE_N_SS_CHANGED ; 
 int STA_OPMODE_SMPS_MODE_CHANGED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct net_device *dev, const u8 *mac,
				       struct sta_opmode_info *sta_opmode,
				       gfp_t gfp)
{
	struct sk_buff *msg;
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC10(wdev->wiphy);
	void *hdr;

	if (FUNC0(!mac))
		return;

	msg = FUNC8(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC3(msg, 0, 0, 0, NL80211_CMD_STA_OPMODE_CHANGED);
	if (!hdr) {
		FUNC7(msg);
		return;
	}

	if (FUNC5(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx))
		goto nla_put_failure;

	if (FUNC5(msg, NL80211_ATTR_IFINDEX, dev->ifindex))
		goto nla_put_failure;

	if (FUNC4(msg, NL80211_ATTR_MAC, ETH_ALEN, mac))
		goto nla_put_failure;

	if ((sta_opmode->changed & STA_OPMODE_SMPS_MODE_CHANGED) &&
	    FUNC6(msg, NL80211_ATTR_SMPS_MODE, sta_opmode->smps_mode))
		goto nla_put_failure;

	if ((sta_opmode->changed & STA_OPMODE_MAX_BW_CHANGED) &&
	    FUNC6(msg, NL80211_ATTR_CHANNEL_WIDTH, sta_opmode->bw))
		goto nla_put_failure;

	if ((sta_opmode->changed & STA_OPMODE_N_SS_CHANGED) &&
	    FUNC6(msg, NL80211_ATTR_NSS, sta_opmode->rx_nss))
		goto nla_put_failure;

	FUNC1(msg, hdr);

	FUNC2(&nl80211_fam, FUNC9(&rdev->wiphy), msg, 0,
				NL80211_MCGRP_MLME, gfp);

	return;

nla_put_failure:
	FUNC7(msg);
}