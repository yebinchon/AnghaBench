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
struct mpls_dev {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTNLGRP_MPLS_NETCONF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,struct mpls_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct net *net, int event,
					int type, struct mpls_dev *mdev)
{
	struct sk_buff *skb;
	int err = -ENOBUFS;

	skb = FUNC4(FUNC3(type), GFP_KERNEL);
	if (!skb)
		goto errout;

	err = FUNC2(skb, mdev, 0, 0, event, 0, type);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in mpls_netconf_msgsize_devconf() */
		FUNC0(err == -EMSGSIZE);
		FUNC1(skb);
		goto errout;
	}

	FUNC5(skb, net, 0, RTNLGRP_MPLS_NETCONF, NULL, GFP_KERNEL);
	return;
errout:
	if (err < 0)
		FUNC6(net, RTNLGRP_MPLS_NETCONF, err);
}