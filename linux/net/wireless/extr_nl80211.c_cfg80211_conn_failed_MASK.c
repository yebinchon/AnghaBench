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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; TYPE_1__* ieee80211_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nl80211_connect_failed_reason { ____Placeholder_nl80211_connect_failed_reason } nl80211_connect_failed_reason ;
struct TYPE_2__ {struct wiphy* wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_CONN_FAILED_REASON ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_CMD_CONN_FAILED ; 
 int /*<<< orphan*/  NL80211_MCGRP_MLME ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC8 (struct wiphy*) ; 

void FUNC9(struct net_device *dev, const u8 *mac_addr,
			  enum nl80211_connect_failed_reason reason,
			  gfp_t gfp)
{
	struct wiphy *wiphy = dev->ieee80211_ptr->wiphy;
	struct cfg80211_registered_device *rdev = FUNC8(wiphy);
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC6(NLMSG_GOODSIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC2(msg, 0, 0, 0, NL80211_CMD_CONN_FAILED);
	if (!hdr) {
		FUNC5(msg);
		return;
	}

	if (FUNC4(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
	    FUNC3(msg, NL80211_ATTR_MAC, ETH_ALEN, mac_addr) ||
	    FUNC4(msg, NL80211_ATTR_CONN_FAILED_REASON, reason))
		goto nla_put_failure;

	FUNC0(msg, hdr);

	FUNC1(&nl80211_fam, FUNC7(&rdev->wiphy), msg, 0,
				NL80211_MCGRP_MLME, gfp);
	return;

 nla_put_failure:
	FUNC5(msg);
}