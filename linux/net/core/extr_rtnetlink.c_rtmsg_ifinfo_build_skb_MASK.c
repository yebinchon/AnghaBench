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
struct net_device {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  RTNLGRP_LINK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct net* FUNC1 (struct net_device*) ; 
 size_t FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,struct net_device*,struct net*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ ,int) ; 

struct sk_buff *FUNC7(int type, struct net_device *dev,
				       unsigned int change,
				       u32 event, gfp_t flags, int *new_nsid,
				       int new_ifindex)
{
	struct net *net = FUNC1(dev);
	struct sk_buff *skb;
	int err = -ENOBUFS;
	size_t if_info_size;

	skb = FUNC4((if_info_size = FUNC2(dev, 0)), flags);
	if (skb == NULL)
		goto errout;

	err = FUNC5(skb, dev, FUNC1(dev),
			       type, 0, 0, change, 0, 0, event,
			       new_nsid, new_ifindex, -1, flags);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in if_nlmsg_size() */
		FUNC0(err == -EMSGSIZE);
		FUNC3(skb);
		goto errout;
	}
	return skb;
errout:
	if (err < 0)
		FUNC6(net, RTNLGRP_LINK, err);
	return NULL;
}