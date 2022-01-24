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
struct wireless_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; } ;
typedef  enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_MCGRP_CONFIG ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cfg80211_registered_device*,struct wireless_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct cfg80211_registered_device *rdev,
				struct wireless_dev *wdev,
				enum nl80211_commands cmd)
{
	struct sk_buff *msg;

	msg = FUNC3(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return;

	if (FUNC1(msg, 0, 0, 0, rdev, wdev, cmd) < 0) {
		FUNC2(msg);
		return;
	}

	FUNC0(&nl80211_fam, FUNC4(&rdev->wiphy), msg, 0,
				NL80211_MCGRP_CONFIG, GFP_KERNEL);
}