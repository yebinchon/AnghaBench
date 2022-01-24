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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct neighbour {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RTNLGRP_NEIGH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,struct neighbour*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct neighbour *n, int type, int flags,
			   u32 pid)
{
	struct net *net = FUNC1(n->dev);
	struct sk_buff *skb;
	int err = -ENOBUFS;

	skb = FUNC5(FUNC4(), GFP_ATOMIC);
	if (skb == NULL)
		goto errout;

	err = FUNC3(skb, n, pid, 0, type, flags);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in neigh_nlmsg_size() */
		FUNC0(err == -EMSGSIZE);
		FUNC2(skb);
		goto errout;
	}
	FUNC6(skb, net, 0, RTNLGRP_NEIGH, NULL, GFP_ATOMIC);
	return;
errout:
	if (err < 0)
		FUNC7(net, RTNLGRP_NEIGH, err);
}