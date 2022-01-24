#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct ipv4_devconf* devconf_dflt; struct ipv4_devconf* devconf_all; } ;
struct net {TYPE_1__ ipv4; } ;
struct ipv4_devconf {int dummy; } ;
struct in_device {struct ipv4_devconf cnf; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NETCONFA_ALL ; 
 size_t NETCONFA_IFINDEX ; 
#define  NETCONFA_IFINDEX_ALL 129 
#define  NETCONFA_IFINDEX_DEFAULT 128 
 int /*<<< orphan*/  NETCONFA_MAX ; 
 TYPE_2__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  RTM_NEWNETCONF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct net_device* FUNC2 (struct net*,int) ; 
 struct in_device* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct sk_buff*,int,struct ipv4_devconf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct nlattr*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *in_skb,
				    struct nlmsghdr *nlh,
				    struct netlink_ext_ack *extack)
{
	struct net *net = FUNC11(in_skb->sk);
	struct nlattr *tb[NETCONFA_MAX+1];
	struct sk_buff *skb;
	struct ipv4_devconf *devconf;
	struct in_device *in_dev;
	struct net_device *dev;
	int ifindex;
	int err;

	err = FUNC6(in_skb, nlh, tb, extack);
	if (err)
		goto errout;

	err = -EINVAL;
	if (!tb[NETCONFA_IFINDEX])
		goto errout;

	ifindex = FUNC8(tb[NETCONFA_IFINDEX]);
	switch (ifindex) {
	case NETCONFA_IFINDEX_ALL:
		devconf = net->ipv4.devconf_all;
		break;
	case NETCONFA_IFINDEX_DEFAULT:
		devconf = net->ipv4.devconf_dflt;
		break;
	default:
		dev = FUNC2(net, ifindex);
		if (!dev)
			goto errout;
		in_dev = FUNC3(dev);
		if (!in_dev)
			goto errout;
		devconf = &in_dev->cnf;
		break;
	}

	err = -ENOBUFS;
	skb = FUNC9(FUNC5(NETCONFA_ALL), GFP_KERNEL);
	if (!skb)
		goto errout;

	err = FUNC4(skb, ifindex, devconf,
					FUNC0(in_skb).portid,
					nlh->nlmsg_seq, RTM_NEWNETCONF, 0,
					NETCONFA_ALL);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in inet_netconf_msgsize_devconf() */
		FUNC1(err == -EMSGSIZE);
		FUNC7(skb);
		goto errout;
	}
	err = FUNC10(skb, net, FUNC0(in_skb).portid);
errout:
	return err;
}