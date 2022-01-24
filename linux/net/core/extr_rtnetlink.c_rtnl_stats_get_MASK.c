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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct if_stats_msg {scalar_t__ ifindex; int /*<<< orphan*/  filter_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  RTM_NEWSTATS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct net_device* FUNC2 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct if_stats_msg* FUNC6 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC9 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct nlmsghdr*,int /*<<< orphan*/ ,int,struct netlink_ext_ack*) ; 
 struct net* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct nlmsghdr *nlh,
			  struct netlink_ext_ack *extack)
{
	struct net *net = FUNC11(skb->sk);
	struct net_device *dev = NULL;
	int idxattr = 0, prividx = 0;
	struct if_stats_msg *ifsm;
	struct sk_buff *nskb;
	u32 filter_mask;
	int err;

	err = FUNC10(nlh, FUNC5(skb),
				   false, extack);
	if (err)
		return err;

	ifsm = FUNC6(nlh);
	if (ifsm->ifindex > 0)
		dev = FUNC2(net, ifsm->ifindex);
	else
		return -EINVAL;

	if (!dev)
		return -ENODEV;

	filter_mask = ifsm->filter_mask;
	if (!filter_mask)
		return -EINVAL;

	nskb = FUNC7(FUNC3(dev, filter_mask), GFP_KERNEL);
	if (!nskb)
		return -ENOBUFS;

	err = FUNC8(nskb, dev, RTM_NEWSTATS,
				  FUNC0(skb).portid, nlh->nlmsg_seq, 0,
				  0, filter_mask, &idxattr, &prividx);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in if_nlmsg_stats_size */
		FUNC1(err == -EMSGSIZE);
		FUNC4(nskb);
	} else {
		err = FUNC9(nskb, net, FUNC0(skb).portid);
	}

	return err;
}