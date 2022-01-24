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
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_ATTR_CH_SWITCH_COUNT ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int NL80211_CMD_CH_SWITCH_STARTED_NOTIFY ; 
 int /*<<< orphan*/  NL80211_MCGRP_MLME ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct cfg80211_chan_def*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct cfg80211_registered_device *rdev,
				     struct net_device *netdev,
				     struct cfg80211_chan_def *chandef,
				     gfp_t gfp,
				     enum nl80211_commands notif,
				     u8 count)
{
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC6(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC3(msg, 0, 0, 0, notif);
	if (!hdr) {
		FUNC5(msg);
		return;
	}

	if (FUNC4(msg, NL80211_ATTR_IFINDEX, netdev->ifindex))
		goto nla_put_failure;

	if (FUNC2(msg, chandef))
		goto nla_put_failure;

	if ((notif == NL80211_CMD_CH_SWITCH_STARTED_NOTIFY) &&
	    (FUNC4(msg, NL80211_ATTR_CH_SWITCH_COUNT, count)))
			goto nla_put_failure;

	FUNC0(msg, hdr);

	FUNC1(&nl80211_fam, FUNC7(&rdev->wiphy), msg, 0,
				NL80211_MCGRP_MLME, gfp);
	return;

 nla_put_failure:
	FUNC5(msg);
}