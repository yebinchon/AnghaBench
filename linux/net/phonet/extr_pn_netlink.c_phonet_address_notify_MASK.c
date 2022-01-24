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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ifaddrmsg {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  RTNLGRP_PHONET_IFADDR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int) ; 
 struct sk_buff* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC9(int event, struct net_device *dev, u8 addr)
{
	struct sk_buff *skb;
	int err = -ENOBUFS;

	skb = FUNC6(FUNC0(sizeof(struct ifaddrmsg)) +
			FUNC5(1), GFP_KERNEL);
	if (skb == NULL)
		goto errout;
	err = FUNC3(skb, dev, addr, 0, 0, event);
	if (err < 0) {
		FUNC1(err == -EMSGSIZE);
		FUNC4(skb);
		goto errout;
	}
	FUNC7(skb, FUNC2(dev), 0,
		    RTNLGRP_PHONET_IFADDR, NULL, GFP_KERNEL);
	return;
errout:
	FUNC8(FUNC2(dev), RTNLGRP_PHONET_IFADDR, err);
}