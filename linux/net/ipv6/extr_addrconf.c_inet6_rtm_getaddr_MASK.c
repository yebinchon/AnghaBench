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
struct inet6_ifaddr {int dummy; } ;
struct inet6_fill_args {int netnsid; int /*<<< orphan*/  flags; int /*<<< orphan*/  event; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;
struct in6_addr {int dummy; } ;
struct ifaddrmsg {scalar_t__ ifa_index; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IFA_ADDRESS ; 
 size_t IFA_LOCAL ; 
 int /*<<< orphan*/  IFA_MAX ; 
 size_t IFA_TARGET_NETNSID ; 
 scalar_t__ FUNC0 (struct net*) ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct net*) ; 
 int /*<<< orphan*/  RTM_NEWADDR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct net_device* FUNC4 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct in6_addr* FUNC6 (struct nlattr*,struct nlattr*,struct in6_addr**) ; 
 int /*<<< orphan*/  FUNC7 (struct inet6_ifaddr*) ; 
 int FUNC8 (struct sk_buff*,struct inet6_ifaddr*,struct inet6_fill_args*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ; 
 struct inet6_ifaddr* FUNC11 (struct net*,struct in6_addr*,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int FUNC13 (struct nlattr*) ; 
 struct ifaddrmsg* FUNC14 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct net*) ; 
 struct net* FUNC17 (int /*<<< orphan*/ ,int) ; 
 int FUNC18 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct sk_buff *in_skb, struct nlmsghdr *nlh,
			     struct netlink_ext_ack *extack)
{
	struct net *net = FUNC19(in_skb->sk);
	struct inet6_fill_args fillargs = {
		.portid = FUNC1(in_skb).portid,
		.seq = nlh->nlmsg_seq,
		.event = RTM_NEWADDR,
		.flags = 0,
		.netnsid = -1,
	};
	struct net *tgt_net = net;
	struct ifaddrmsg *ifm;
	struct nlattr *tb[IFA_MAX+1];
	struct in6_addr *addr = NULL, *peer;
	struct net_device *dev = NULL;
	struct inet6_ifaddr *ifa;
	struct sk_buff *skb;
	int err;

	err = FUNC10(in_skb, nlh, tb, extack);
	if (err < 0)
		return err;

	if (tb[IFA_TARGET_NETNSID]) {
		fillargs.netnsid = FUNC13(tb[IFA_TARGET_NETNSID]);

		tgt_net = FUNC17(FUNC1(in_skb).sk,
						  fillargs.netnsid);
		if (FUNC0(tgt_net))
			return FUNC2(tgt_net);
	}

	addr = FUNC6(tb[IFA_ADDRESS], tb[IFA_LOCAL], &peer);
	if (!addr)
		return -EINVAL;

	ifm = FUNC14(nlh);
	if (ifm->ifa_index)
		dev = FUNC4(tgt_net, ifm->ifa_index);

	ifa = FUNC11(tgt_net, addr, dev, 1);
	if (!ifa) {
		err = -EADDRNOTAVAIL;
		goto errout;
	}

	skb = FUNC15(FUNC9(), GFP_KERNEL);
	if (!skb) {
		err = -ENOBUFS;
		goto errout_ifa;
	}

	err = FUNC8(skb, ifa, &fillargs);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in inet6_ifaddr_msgsize() */
		FUNC3(err == -EMSGSIZE);
		FUNC12(skb);
		goto errout_ifa;
	}
	err = FUNC18(skb, tgt_net, FUNC1(in_skb).portid);
errout_ifa:
	FUNC7(ifa);
errout:
	if (dev)
		FUNC5(dev);
	if (fillargs.netnsid >= 0)
		FUNC16(tgt_net);

	return err;
}