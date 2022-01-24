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
struct net {int dummy; } ;
struct ipv4_devconf {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTNLGRP_IPV4_NETCONF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*,int,struct ipv4_devconf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct net *net, int event, int type,
				 int ifindex, struct ipv4_devconf *devconf)
{
	struct sk_buff *skb;
	int err = -ENOBUFS;

	skb = FUNC4(FUNC2(type), GFP_KERNEL);
	if (!skb)
		goto errout;

	err = FUNC1(skb, ifindex, devconf, 0, 0,
					event, 0, type);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in inet_netconf_msgsize_devconf() */
		FUNC0(err == -EMSGSIZE);
		FUNC3(skb);
		goto errout;
	}
	FUNC5(skb, net, 0, RTNLGRP_IPV4_NETCONF, NULL, GFP_KERNEL);
	return;
errout:
	if (err < 0)
		FUNC6(net, RTNLGRP_IPV4_NETCONF, err);
}