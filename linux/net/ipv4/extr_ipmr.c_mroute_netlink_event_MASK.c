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
struct net {int dummy; } ;
struct mr_table {int /*<<< orphan*/  maxvif; int /*<<< orphan*/  net; } ;
struct TYPE_2__ {scalar_t__ mfc_parent; } ;
struct mfc_cache {TYPE_1__ _c; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAXVIFS ; 
 int /*<<< orphan*/  RTNLGRP_IPV4_MROUTE ; 
 int FUNC0 (struct mr_table*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mfc_cache*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct mr_table *mrt, struct mfc_cache *mfc,
				 int cmd)
{
	struct net *net = FUNC4(&mrt->net);
	struct sk_buff *skb;
	int err = -ENOBUFS;

	skb = FUNC3(FUNC2(mfc->_c.mfc_parent >= MAXVIFS,
				       mrt->maxvif),
			GFP_ATOMIC);
	if (!skb)
		goto errout;

	err = FUNC0(mrt, skb, 0, 0, mfc, cmd, 0);
	if (err < 0)
		goto errout;

	FUNC5(skb, net, 0, RTNLGRP_IPV4_MROUTE, NULL, GFP_ATOMIC);
	return;

errout:
	FUNC1(skb);
	if (err < 0)
		FUNC6(net, RTNLGRP_IPV4_MROUTE, err);
}