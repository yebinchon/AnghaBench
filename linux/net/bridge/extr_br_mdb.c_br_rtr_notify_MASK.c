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
struct net_device {int dummy; } ;
struct net_bridge_port {TYPE_1__* dev; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int ifindex; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NTF_SELF ; 
 int /*<<< orphan*/  RTNLGRP_MDB ; 
 struct net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,struct net_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct net_device *dev, struct net_bridge_port *port,
		   int type)
{
	struct net *net = FUNC0(dev);
	struct sk_buff *skb;
	int err = -ENOBUFS;
	int ifindex;

	ifindex = port ? port->dev->ifindex : 0;
	skb = FUNC2(FUNC5(), GFP_ATOMIC);
	if (!skb)
		goto errout;

	err = FUNC3(skb, dev, ifindex, 0, 0, type, NTF_SELF);
	if (err < 0) {
		FUNC1(skb);
		goto errout;
	}

	FUNC4(skb, net, 0, RTNLGRP_MDB, NULL, GFP_ATOMIC);
	return;

errout:
	FUNC6(net, RTNLGRP_MDB, err);
}