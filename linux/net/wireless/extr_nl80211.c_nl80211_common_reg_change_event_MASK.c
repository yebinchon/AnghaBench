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
struct regulatory_request {int dummy; } ;
typedef  enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_MCGRP_REGULATORY ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct regulatory_request*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(enum nl80211_commands cmd_id,
				     struct regulatory_request *request)
{
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC5(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return;

	hdr = FUNC3(msg, 0, 0, 0, cmd_id);
	if (!hdr)
		goto nla_put_failure;

	if (!FUNC2(msg, request))
		goto nla_put_failure;

	FUNC0(msg, hdr);

	FUNC6();
	FUNC1(&nl80211_fam, msg, 0,
				NL80211_MCGRP_REGULATORY, GFP_ATOMIC);
	FUNC7();

	return;

nla_put_failure:
	FUNC4(msg);
}