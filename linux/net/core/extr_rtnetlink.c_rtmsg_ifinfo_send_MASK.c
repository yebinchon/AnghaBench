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
struct net_device {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  RTNLGRP_LINK ; 
 struct net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct sk_buff *skb, struct net_device *dev, gfp_t flags)
{
	struct net *net = FUNC0(dev);

	FUNC1(skb, net, 0, RTNLGRP_LINK, NULL, flags);
}