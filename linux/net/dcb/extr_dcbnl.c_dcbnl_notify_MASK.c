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
struct nlmsghdr {int dummy; } ;
struct net_device {struct dcbnl_rtnl_ops* dcbnl_ops; } ;
struct net {int dummy; } ;
struct dcbnl_rtnl_ops {int dummy; } ;

/* Variables and functions */
 int DCB_CAP_DCBX_VER_IEEE ; 
 int ENOBUFS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTNLGRP_DCB ; 
 int FUNC0 (struct sk_buff*,struct net_device*) ; 
 int FUNC1 (struct sk_buff*,struct net_device*) ; 
 struct sk_buff* FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlmsghdr**) ; 
 struct net* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, int event, int cmd,
			u32 seq, u32 portid, int dcbx_ver)
{
	struct net *net = FUNC3(dev);
	struct sk_buff *skb;
	struct nlmsghdr *nlh;
	const struct dcbnl_rtnl_ops *ops = dev->dcbnl_ops;
	int err;

	if (!ops)
		return -EOPNOTSUPP;

	skb = FUNC2(event, cmd, portid, seq, 0, &nlh);
	if (!skb)
		return -ENOBUFS;

	if (dcbx_ver == DCB_CAP_DCBX_VER_IEEE)
		err = FUNC1(skb, dev);
	else
		err = FUNC0(skb, dev);

	if (err < 0) {
		/* Report error to broadcast listeners */
		FUNC5(skb);
		FUNC7(net, RTNLGRP_DCB, err);
	} else {
		/* End nlmsg and notify broadcast listeners */
		FUNC4(skb, nlh);
		FUNC6(skb, net, 0, RTNLGRP_DCB, NULL, GFP_KERNEL);
	}

	return err;
}