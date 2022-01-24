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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nl_info {TYPE_1__* nlh; int /*<<< orphan*/  portid; } ;
struct net {int dummy; } ;
struct fib6_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FIB_EVENT_ENTRY_REPLACE ; 
 int /*<<< orphan*/  NLM_F_REPLACE ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 int /*<<< orphan*/  RTNLGRP_IPV6_ROUTE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ,struct fib6_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net*,struct sk_buff*,struct fib6_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,int /*<<< orphan*/ ,int) ; 

void FUNC9(struct net *net, struct fib6_info *rt,
		    struct nl_info *info)
{
	u32 seq = info->nlh ? info->nlh->nlmsg_seq : 0;
	struct sk_buff *skb;
	int err = -ENOBUFS;

	/* call_fib6_entry_notifiers will be removed when in-kernel notifier
	 * is implemented and supported for nexthop objects
	 */
	FUNC1(net, FIB_EVENT_ENTRY_REPLACE, rt, NULL);

	skb = FUNC4(FUNC6(rt), FUNC2());
	if (!skb)
		goto errout;

	err = FUNC5(net, skb, rt, NULL, NULL, NULL, 0,
			    RTM_NEWROUTE, info->portid, seq, NLM_F_REPLACE);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in rt6_nlmsg_size() */
		FUNC0(err == -EMSGSIZE);
		FUNC3(skb);
		goto errout;
	}
	FUNC7(skb, net, info->portid, RTNLGRP_IPV6_ROUTE,
		    info->nlh, FUNC2());
	return;
errout:
	if (err < 0)
		FUNC8(net, RTNLGRP_IPV6_ROUTE, err);
}