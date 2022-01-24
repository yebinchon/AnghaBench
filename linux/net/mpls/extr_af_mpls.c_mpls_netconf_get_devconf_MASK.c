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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct mpls_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NETCONFA_ALL ; 
 size_t NETCONFA_IFINDEX ; 
 int /*<<< orphan*/  NETCONFA_MAX ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  RTM_NEWNETCONF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct net_device* FUNC2 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct mpls_dev* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct sk_buff*,struct mpls_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ; 
 int FUNC8 (struct nlattr*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *in_skb,
				    struct nlmsghdr *nlh,
				    struct netlink_ext_ack *extack)
{
	struct net *net = FUNC11(in_skb->sk);
	struct nlattr *tb[NETCONFA_MAX + 1];
	struct net_device *dev;
	struct mpls_dev *mdev;
	struct sk_buff *skb;
	int ifindex;
	int err;

	err = FUNC7(in_skb, nlh, tb, extack);
	if (err < 0)
		goto errout;

	err = -EINVAL;
	if (!tb[NETCONFA_IFINDEX])
		goto errout;

	ifindex = FUNC8(tb[NETCONFA_IFINDEX]);
	dev = FUNC2(net, ifindex);
	if (!dev)
		goto errout;

	mdev = FUNC4(dev);
	if (!mdev)
		goto errout;

	err = -ENOBUFS;
	skb = FUNC9(FUNC6(NETCONFA_ALL), GFP_KERNEL);
	if (!skb)
		goto errout;

	err = FUNC5(skb, mdev,
					FUNC0(in_skb).portid,
					nlh->nlmsg_seq, RTM_NEWNETCONF, 0,
					NETCONFA_ALL);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in mpls_netconf_msgsize_devconf() */
		FUNC1(err == -EMSGSIZE);
		FUNC3(skb);
		goto errout;
	}
	err = FUNC10(skb, net, FUNC0(in_skb).portid);
errout:
	return err;
}