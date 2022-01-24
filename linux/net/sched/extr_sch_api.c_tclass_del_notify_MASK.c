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
struct nlmsghdr {int nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; } ;
struct net {int dummy; } ;
struct Qdisc_class_ops {int (* delete ) (struct Qdisc*,unsigned long) ;} ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int NLM_F_ECHO ; 
 int /*<<< orphan*/  RTM_DELTCLASS ; 
 int /*<<< orphan*/  RTNLGRP_TC ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct Qdisc*,unsigned long) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct Qdisc*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net *net,
			     const struct Qdisc_class_ops *cops,
			     struct sk_buff *oskb, struct nlmsghdr *n,
			     struct Qdisc *q, unsigned long cl)
{
	u32 portid = oskb ? FUNC0(oskb).portid : 0;
	struct sk_buff *skb;
	int err = 0;

	if (!cops->delete)
		return -EOPNOTSUPP;

	skb = FUNC1(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!skb)
		return -ENOBUFS;

	if (FUNC5(skb, q, cl, portid, n->nlmsg_seq, 0,
			   RTM_DELTCLASS) < 0) {
		FUNC2(skb);
		return -EINVAL;
	}

	err = cops->delete(q, cl);
	if (err) {
		FUNC2(skb);
		return err;
	}

	err = FUNC3(skb, net, portid, RTNLGRP_TC,
			     n->nlmsg_flags & NLM_F_ECHO);
	if (err > 0)
		err = 0;
	return err;
}