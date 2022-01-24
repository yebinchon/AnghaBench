#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct cfg80211_sched_scan_request {int /*<<< orphan*/  reqid; TYPE_1__* dev; int /*<<< orphan*/  wiphy; } ;
struct TYPE_4__ {int /*<<< orphan*/  wiphy_idx; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NL80211_ATTR_COOKIE ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_PAD ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct sk_buff *msg,
			    struct cfg80211_sched_scan_request *req, u32 cmd)
{
	void *hdr;

	hdr = FUNC2(msg, 0, 0, 0, cmd);
	if (!hdr)
		return -1;

	if (FUNC3(msg, NL80211_ATTR_WIPHY,
			FUNC5(req->wiphy)->wiphy_idx) ||
	    FUNC3(msg, NL80211_ATTR_IFINDEX, req->dev->ifindex) ||
	    FUNC4(msg, NL80211_ATTR_COOKIE, req->reqid,
			      NL80211_ATTR_PAD))
		goto nla_put_failure;

	FUNC1(msg, hdr);
	return 0;

 nla_put_failure:
	FUNC0(msg, hdr);
	return -EMSGSIZE;
}