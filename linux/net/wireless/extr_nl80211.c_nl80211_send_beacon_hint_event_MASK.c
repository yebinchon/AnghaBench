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
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NL80211_ATTR_FREQ_AFTER ; 
 int /*<<< orphan*/  NL80211_ATTR_FREQ_BEFORE ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_REG_BEACON_HINT ; 
 int /*<<< orphan*/  NL80211_MCGRP_REGULATORY ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wiphy*) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct wiphy*,struct ieee80211_channel*,int) ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

void FUNC12(struct wiphy *wiphy,
				    struct ieee80211_channel *channel_before,
				    struct ieee80211_channel *channel_after)
{
	struct sk_buff *msg;
	void *hdr;
	struct nlattr *nl_freq;

	msg = FUNC9(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
	if (!msg)
		return;

	hdr = FUNC4(msg, 0, 0, 0, NL80211_CMD_REG_BEACON_HINT);
	if (!hdr) {
		FUNC8(msg);
		return;
	}

	/*
	 * Since we are applying the beacon hint to a wiphy we know its
	 * wiphy_idx is valid
	 */
	if (FUNC7(msg, NL80211_ATTR_WIPHY, FUNC2(wiphy)))
		goto nla_put_failure;

	/* Before */
	nl_freq = FUNC6(msg, NL80211_ATTR_FREQ_BEFORE);
	if (!nl_freq)
		goto nla_put_failure;

	if (FUNC3(msg, wiphy, channel_before, false))
		goto nla_put_failure;
	FUNC5(msg, nl_freq);

	/* After */
	nl_freq = FUNC6(msg, NL80211_ATTR_FREQ_AFTER);
	if (!nl_freq)
		goto nla_put_failure;

	if (FUNC3(msg, wiphy, channel_after, false))
		goto nla_put_failure;
	FUNC5(msg, nl_freq);

	FUNC0(msg, hdr);

	FUNC10();
	FUNC1(&nl80211_fam, msg, 0,
				NL80211_MCGRP_REGULATORY, GFP_ATOMIC);
	FUNC11();

	return;

nla_put_failure:
	FUNC8(msg);
}