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
struct dn_ifaddr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTNLGRP_DECnet_IFADDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct sk_buff*,struct dn_ifaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(int event, struct dn_ifaddr *ifa)
{
	struct sk_buff *skb;
	int err = -ENOBUFS;

	skb = FUNC1(FUNC2(), GFP_KERNEL);
	if (skb == NULL)
		goto errout;

	err = FUNC3(skb, ifa, 0, 0, event, 0);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in dn_ifaddr_nlmsg_size() */
		FUNC0(err == -EMSGSIZE);
		FUNC4(skb);
		goto errout;
	}
	FUNC5(skb, &init_net, 0, RTNLGRP_DECnet_IFADDR, NULL, GFP_KERNEL);
	return;
errout:
	if (err < 0)
		FUNC6(&init_net, RTNLGRP_DECnet_IFADDR, err);
}