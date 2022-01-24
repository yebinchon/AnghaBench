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
typedef  int /*<<< orphan*/  u64 ;
struct wireless_dev {int /*<<< orphan*/  wiphy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  wiphy_idx; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_ACK ; 
 int /*<<< orphan*/  NL80211_ATTR_ACK_SIGNAL ; 
 int /*<<< orphan*/  NL80211_ATTR_COOKIE ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_PAD ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_PROBE_CLIENT ; 
 int /*<<< orphan*/  NL80211_MCGRP_MLME ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct net_device *dev, const u8 *addr,
			   u64 cookie, bool acked, s32 ack_signal,
			   bool is_valid_ack_signal, gfp_t gfp)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC12(wdev->wiphy);
	struct sk_buff *msg;
	void *hdr;

	FUNC10(dev, addr, cookie, acked);

	msg = FUNC9(NLMSG_DEFAULT_SIZE, gfp);

	if (!msg)
		return;

	hdr = FUNC2(msg, 0, 0, 0, NL80211_CMD_PROBE_CLIENT);
	if (!hdr) {
		FUNC8(msg);
		return;
	}

	if (FUNC6(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC6(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
	    FUNC3(msg, NL80211_ATTR_MAC, ETH_ALEN, addr) ||
	    FUNC7(msg, NL80211_ATTR_COOKIE, cookie,
			      NL80211_ATTR_PAD) ||
	    (acked && FUNC4(msg, NL80211_ATTR_ACK)) ||
	    (is_valid_ack_signal && FUNC5(msg, NL80211_ATTR_ACK_SIGNAL,
						ack_signal)))
		goto nla_put_failure;

	FUNC0(msg, hdr);

	FUNC1(&nl80211_fam, FUNC11(&rdev->wiphy), msg, 0,
				NL80211_MCGRP_MLME, gfp);
	return;

 nla_put_failure:
	FUNC8(msg);
}