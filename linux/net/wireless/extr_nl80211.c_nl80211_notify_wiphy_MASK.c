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
struct sk_buff {int dummy; } ;
struct nl80211_dump_wiphy_state {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; } ;
typedef  enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NL80211_CMD_DEL_WIPHY ; 
 int NL80211_CMD_NEW_WIPHY ; 
 int /*<<< orphan*/  NL80211_MCGRP_CONFIG ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 scalar_t__ FUNC2 (struct cfg80211_registered_device*,int,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nl80211_dump_wiphy_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct cfg80211_registered_device *rdev,
			  enum nl80211_commands cmd)
{
	struct sk_buff *msg;
	struct nl80211_dump_wiphy_state state = {};

	FUNC0(cmd != NL80211_CMD_NEW_WIPHY &&
		cmd != NL80211_CMD_DEL_WIPHY);

	msg = FUNC4(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return;

	if (FUNC2(rdev, cmd, msg, 0, 0, 0, &state) < 0) {
		FUNC3(msg);
		return;
	}

	FUNC1(&nl80211_fam, FUNC5(&rdev->wiphy), msg, 0,
				NL80211_MCGRP_CONFIG, GFP_KERNEL);
}