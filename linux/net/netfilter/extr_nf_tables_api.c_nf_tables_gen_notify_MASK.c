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
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFNLGRP_NFTABLES ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct nlmsghdr*) ; 

__attribute__((used)) static void FUNC9(struct net *net, struct sk_buff *skb,
				 int event)
{
	struct nlmsghdr *nlh = FUNC6(skb);
	struct sk_buff *skb2;
	int err;

	if (FUNC8(nlh) &&
	    !FUNC3(net, NFNLGRP_NFTABLES))
		return;

	skb2 = FUNC7(NLMSG_GOODSIZE, GFP_KERNEL);
	if (skb2 == NULL)
		goto err;

	err = FUNC2(skb2, net, FUNC0(skb).portid,
				      nlh->nlmsg_seq);
	if (err < 0) {
		FUNC1(skb2);
		goto err;
	}

	FUNC4(skb2, net, FUNC0(skb).portid, NFNLGRP_NFTABLES,
		       FUNC8(nlh), GFP_KERNEL);
	return;
err:
	FUNC5(net, FUNC0(skb).portid, NFNLGRP_NFTABLES,
			  -ENOBUFS);
}