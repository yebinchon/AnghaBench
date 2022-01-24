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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct cfg80211_sched_scan_request {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_MCGRP_SCAN ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct cfg80211_sched_scan_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct cfg80211_sched_scan_request *req, u32 cmd)
{
	struct sk_buff *msg;

	msg = FUNC3(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return;

	if (FUNC1(msg, req, cmd) < 0) {
		FUNC2(msg);
		return;
	}

	FUNC0(&nl80211_fam, FUNC4(req->wiphy), msg, 0,
				NL80211_MCGRP_SCAN, GFP_KERNEL);
}