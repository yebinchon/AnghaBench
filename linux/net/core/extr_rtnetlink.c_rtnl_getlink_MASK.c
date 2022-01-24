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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_index; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IFLA_EXT_MASK ; 
 size_t IFLA_IFNAME ; 
 int /*<<< orphan*/  IFLA_MAX ; 
 size_t IFLA_TARGET_NETNSID ; 
 int IFNAMSIZ ; 
 scalar_t__ FUNC0 (struct net*) ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct net*) ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct net_device* FUNC4 (struct net*,scalar_t__) ; 
 struct net_device* FUNC5 (struct net*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC9 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct nlattr*,int) ; 
 struct ifinfomsg* FUNC11 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net*) ; 
 int FUNC14 (struct nlattr**,struct netlink_ext_ack*,int) ; 
 int FUNC15 (struct sk_buff*,struct net_device*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct net* FUNC16 (int /*<<< orphan*/ ,int) ; 
 int FUNC17 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ; 
 struct net* FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct sk_buff *skb, struct nlmsghdr *nlh,
			struct netlink_ext_ack *extack)
{
	struct net *net = FUNC19(skb->sk);
	struct net *tgt_net = net;
	struct ifinfomsg *ifm;
	char ifname[IFNAMSIZ];
	struct nlattr *tb[IFLA_MAX+1];
	struct net_device *dev = NULL;
	struct sk_buff *nskb;
	int netnsid = -1;
	int err;
	u32 ext_filter_mask = 0;

	err = FUNC18(skb, nlh, tb, extack);
	if (err < 0)
		return err;

	err = FUNC14(tb, extack, true);
	if (err < 0)
		return err;

	if (tb[IFLA_TARGET_NETNSID]) {
		netnsid = FUNC8(tb[IFLA_TARGET_NETNSID]);
		tgt_net = FUNC16(FUNC1(skb).sk, netnsid);
		if (FUNC0(tgt_net))
			return FUNC2(tgt_net);
	}

	if (tb[IFLA_IFNAME])
		FUNC10(ifname, tb[IFLA_IFNAME], IFNAMSIZ);

	if (tb[IFLA_EXT_MASK])
		ext_filter_mask = FUNC9(tb[IFLA_EXT_MASK]);

	err = -EINVAL;
	ifm = FUNC11(nlh);
	if (ifm->ifi_index > 0)
		dev = FUNC4(tgt_net, ifm->ifi_index);
	else if (tb[IFLA_IFNAME])
		dev = FUNC5(tgt_net, ifname);
	else
		goto out;

	err = -ENODEV;
	if (dev == NULL)
		goto out;

	err = -ENOBUFS;
	nskb = FUNC12(FUNC6(dev, ext_filter_mask), GFP_KERNEL);
	if (nskb == NULL)
		goto out;

	err = FUNC15(nskb, dev, net,
			       RTM_NEWLINK, FUNC1(skb).portid,
			       nlh->nlmsg_seq, 0, 0, ext_filter_mask,
			       0, NULL, 0, netnsid, GFP_KERNEL);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in if_nlmsg_size */
		FUNC3(err == -EMSGSIZE);
		FUNC7(nskb);
	} else
		err = FUNC17(nskb, net, FUNC1(skb).portid);
out:
	if (netnsid >= 0)
		FUNC13(tgt_net);

	return err;
}