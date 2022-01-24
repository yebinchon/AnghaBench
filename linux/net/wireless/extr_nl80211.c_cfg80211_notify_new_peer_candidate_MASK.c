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
typedef  scalar_t__ u8 ;
struct wireless_dev {scalar_t__ iftype; int /*<<< orphan*/  wiphy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy_idx; int /*<<< orphan*/  wiphy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_IE ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_RX_SIGNAL_DBM ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_NEW_PEER_CANDIDATE ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  NL80211_MCGRP_MLME ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,scalar_t__ const*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct net_device *dev, const u8 *addr,
					const u8 *ie, u8 ie_len,
					int sig_dbm, gfp_t gfp)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC10(wdev->wiphy);
	struct sk_buff *msg;
	void *hdr;

	if (FUNC0(wdev->iftype != NL80211_IFTYPE_MESH_POINT))
		return;

	FUNC8(dev, addr);

	msg = FUNC7(100 + ie_len, gfp);
	if (!msg)
		return;

	hdr = FUNC3(msg, 0, 0, 0, NL80211_CMD_NEW_PEER_CANDIDATE);
	if (!hdr) {
		FUNC6(msg);
		return;
	}

	if (FUNC5(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC5(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
	    FUNC4(msg, NL80211_ATTR_MAC, ETH_ALEN, addr) ||
	    (ie_len && ie &&
	     FUNC4(msg, NL80211_ATTR_IE, ie_len, ie)) ||
	    (sig_dbm &&
	     FUNC5(msg, NL80211_ATTR_RX_SIGNAL_DBM, sig_dbm)))
		goto nla_put_failure;

	FUNC1(msg, hdr);

	FUNC2(&nl80211_fam, FUNC9(&rdev->wiphy), msg, 0,
				NL80211_MCGRP_MLME, gfp);
	return;

 nla_put_failure:
	FUNC6(msg);
}