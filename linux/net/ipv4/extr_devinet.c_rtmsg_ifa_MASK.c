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
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct net {int dummy; } ;
struct inet_fill_args {int event; int netnsid; int /*<<< orphan*/  flags; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;
struct in_ifaddr {TYPE_1__* ifa_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTNLGRP_IPV4_IFADDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct in_ifaddr*,struct inet_fill_args*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(int event, struct in_ifaddr *ifa, struct nlmsghdr *nlh,
		      u32 portid)
{
	struct inet_fill_args fillargs = {
		.portid = portid,
		.seq = nlh ? nlh->nlmsg_seq : 0,
		.event = event,
		.flags = 0,
		.netnsid = -1,
	};
	struct sk_buff *skb;
	int err = -ENOBUFS;
	struct net *net;

	net = FUNC1(ifa->ifa_dev->dev);
	skb = FUNC5(FUNC3(), GFP_KERNEL);
	if (!skb)
		goto errout;

	err = FUNC2(skb, ifa, &fillargs);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in inet_nlmsg_size() */
		FUNC0(err == -EMSGSIZE);
		FUNC4(skb);
		goto errout;
	}
	FUNC6(skb, net, portid, RTNLGRP_IPV4_IFADDR, nlh, GFP_KERNEL);
	return;
errout:
	if (err < 0)
		FUNC7(net, RTNLGRP_IPV4_IFADDR, err);
}