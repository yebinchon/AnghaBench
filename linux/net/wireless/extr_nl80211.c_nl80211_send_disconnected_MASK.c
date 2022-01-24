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
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  wiphy_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_ATTR_DISCONNECTED_BY_AP ; 
 int /*<<< orphan*/  NL80211_ATTR_IE ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_REASON_CODE ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_DISCONNECT ; 
 int /*<<< orphan*/  NL80211_MCGRP_MLME ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct cfg80211_registered_device *rdev,
			       struct net_device *netdev, u16 reason,
			       const u8 *ie, size_t ie_len, bool from_ap)
{
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC8(100 + ie_len, GFP_KERNEL);
	if (!msg)
		return;

	hdr = FUNC2(msg, 0, 0, 0, NL80211_CMD_DISCONNECT);
	if (!hdr) {
		FUNC7(msg);
		return;
	}

	if (FUNC6(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC6(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
	    (reason &&
	     FUNC5(msg, NL80211_ATTR_REASON_CODE, reason)) ||
	    (from_ap &&
	     FUNC4(msg, NL80211_ATTR_DISCONNECTED_BY_AP)) ||
	    (ie && FUNC3(msg, NL80211_ATTR_IE, ie_len, ie)))
		goto nla_put_failure;

	FUNC0(msg, hdr);

	FUNC1(&nl80211_fam, FUNC9(&rdev->wiphy), msg, 0,
				NL80211_MCGRP_MLME, GFP_KERNEL);
	return;

 nla_put_failure:
	FUNC7(msg);
}