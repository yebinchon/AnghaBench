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
struct net_bridge_fdb_entry {int dummy; } ;
struct net_bridge {int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RTNLGRP_NEIGH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_fdb_entry const*,int) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,struct net_bridge*,struct net_bridge_fdb_entry const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct net_bridge *br,
		       const struct net_bridge_fdb_entry *fdb, int type,
		       bool swdev_notify)
{
	struct net *net = FUNC2(br->dev);
	struct sk_buff *skb;
	int err = -ENOBUFS;

	if (swdev_notify)
		FUNC1(fdb, type);

	skb = FUNC6(FUNC4(), GFP_ATOMIC);
	if (skb == NULL)
		goto errout;

	err = FUNC3(skb, br, fdb, 0, 0, type, 0);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in fdb_nlmsg_size() */
		FUNC0(err == -EMSGSIZE);
		FUNC5(skb);
		goto errout;
	}
	FUNC7(skb, net, 0, RTNLGRP_NEIGH, NULL, GFP_ATOMIC);
	return;
errout:
	FUNC8(net, RTNLGRP_NEIGH, err);
}