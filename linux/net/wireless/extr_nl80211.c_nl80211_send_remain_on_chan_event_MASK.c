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
typedef  int /*<<< orphan*/  u64 ;
struct wireless_dev {TYPE_1__* netdev; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_channel {unsigned int center_freq; } ;
struct cfg80211_registered_device {unsigned int wiphy_idx; int /*<<< orphan*/  wiphy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {unsigned int ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_ATTR_COOKIE ; 
 int /*<<< orphan*/  NL80211_ATTR_DURATION ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_PAD ; 
 int /*<<< orphan*/  NL80211_ATTR_WDEV ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY_CHANNEL_TYPE ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY_FREQ ; 
 unsigned int NL80211_CHAN_NO_HT ; 
 int NL80211_CMD_REMAIN_ON_CHANNEL ; 
 int /*<<< orphan*/  NL80211_MCGRP_MLME ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(
	int cmd, struct cfg80211_registered_device *rdev,
	struct wireless_dev *wdev, u64 cookie,
	struct ieee80211_channel *chan,
	unsigned int duration, gfp_t gfp)
{
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC6(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC2(msg, 0, 0, 0, cmd);
	if (!hdr) {
		FUNC5(msg);
		return;
	}

	if (FUNC3(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    (wdev->netdev && FUNC3(msg, NL80211_ATTR_IFINDEX,
					 wdev->netdev->ifindex)) ||
	    FUNC4(msg, NL80211_ATTR_WDEV, FUNC7(wdev),
			      NL80211_ATTR_PAD) ||
	    FUNC3(msg, NL80211_ATTR_WIPHY_FREQ, chan->center_freq) ||
	    FUNC3(msg, NL80211_ATTR_WIPHY_CHANNEL_TYPE,
			NL80211_CHAN_NO_HT) ||
	    FUNC4(msg, NL80211_ATTR_COOKIE, cookie,
			      NL80211_ATTR_PAD))
		goto nla_put_failure;

	if (cmd == NL80211_CMD_REMAIN_ON_CHANNEL &&
	    FUNC3(msg, NL80211_ATTR_DURATION, duration))
		goto nla_put_failure;

	FUNC0(msg, hdr);

	FUNC1(&nl80211_fam, FUNC8(&rdev->wiphy), msg, 0,
				NL80211_MCGRP_MLME, gfp);
	return;

 nla_put_failure:
	FUNC5(msg);
}