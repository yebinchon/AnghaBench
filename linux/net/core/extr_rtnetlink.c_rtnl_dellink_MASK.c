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
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_index; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t IFLA_GROUP ; 
 size_t IFLA_IFNAME ; 
 int /*<<< orphan*/  IFLA_MAX ; 
 size_t IFLA_TARGET_NETNSID ; 
 int IFNAMSIZ ; 
 scalar_t__ FUNC0 (struct net*) ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct net*) ; 
 struct net_device* FUNC3 (struct net*,scalar_t__) ; 
 struct net_device* FUNC4 (struct net*,char*) ; 
 int /*<<< orphan*/  ifla_policy ; 
 int FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct nlattr*,int) ; 
 struct ifinfomsg* FUNC8 (struct nlmsghdr*) ; 
 int FUNC9 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC10 (struct net*) ; 
 int FUNC11 (struct net_device*) ; 
 int FUNC12 (struct nlattr**,struct netlink_ext_ack*,int) ; 
 struct net* FUNC13 (int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *skb, struct nlmsghdr *nlh,
			struct netlink_ext_ack *extack)
{
	struct net *net = FUNC15(skb->sk);
	struct net *tgt_net = net;
	struct net_device *dev = NULL;
	struct ifinfomsg *ifm;
	char ifname[IFNAMSIZ];
	struct nlattr *tb[IFLA_MAX+1];
	int err;
	int netnsid = -1;

	err = FUNC9(nlh, sizeof(*ifm), tb, IFLA_MAX,
				     ifla_policy, extack);
	if (err < 0)
		return err;

	err = FUNC12(tb, extack, true);
	if (err < 0)
		return err;

	if (tb[IFLA_IFNAME])
		FUNC7(ifname, tb[IFLA_IFNAME], IFNAMSIZ);

	if (tb[IFLA_TARGET_NETNSID]) {
		netnsid = FUNC5(tb[IFLA_TARGET_NETNSID]);
		tgt_net = FUNC13(FUNC1(skb).sk, netnsid);
		if (FUNC0(tgt_net))
			return FUNC2(tgt_net);
	}

	err = -EINVAL;
	ifm = FUNC8(nlh);
	if (ifm->ifi_index > 0)
		dev = FUNC3(tgt_net, ifm->ifi_index);
	else if (tb[IFLA_IFNAME])
		dev = FUNC4(tgt_net, ifname);
	else if (tb[IFLA_GROUP])
		err = FUNC14(tgt_net, FUNC6(tb[IFLA_GROUP]));
	else
		goto out;

	if (!dev) {
		if (tb[IFLA_IFNAME] || ifm->ifi_index > 0)
			err = -ENODEV;

		goto out;
	}

	err = FUNC11(dev);

out:
	if (netnsid >= 0)
		FUNC10(tgt_net);

	return err;
}