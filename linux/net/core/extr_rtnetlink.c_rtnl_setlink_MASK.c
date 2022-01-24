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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_index; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t IFLA_IFNAME ; 
 int /*<<< orphan*/  IFLA_MAX ; 
 int IFNAMSIZ ; 
 struct net_device* FUNC0 (struct net*,scalar_t__) ; 
 struct net_device* FUNC1 (struct net*,char*) ; 
 int FUNC2 (struct sk_buff*,struct net_device*,struct ifinfomsg*,struct netlink_ext_ack*,struct nlattr**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifla_policy ; 
 int /*<<< orphan*/  FUNC3 (char*,struct nlattr*,int) ; 
 struct ifinfomsg* FUNC4 (struct nlmsghdr*) ; 
 int FUNC5 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC6 (struct nlattr**,struct netlink_ext_ack*,int) ; 
 struct net* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct nlmsghdr *nlh,
			struct netlink_ext_ack *extack)
{
	struct net *net = FUNC7(skb->sk);
	struct ifinfomsg *ifm;
	struct net_device *dev;
	int err;
	struct nlattr *tb[IFLA_MAX+1];
	char ifname[IFNAMSIZ];

	err = FUNC5(nlh, sizeof(*ifm), tb, IFLA_MAX,
				     ifla_policy, extack);
	if (err < 0)
		goto errout;

	err = FUNC6(tb, extack, false);
	if (err < 0)
		goto errout;

	if (tb[IFLA_IFNAME])
		FUNC3(ifname, tb[IFLA_IFNAME], IFNAMSIZ);
	else
		ifname[0] = '\0';

	err = -EINVAL;
	ifm = FUNC4(nlh);
	if (ifm->ifi_index > 0)
		dev = FUNC0(net, ifm->ifi_index);
	else if (tb[IFLA_IFNAME])
		dev = FUNC1(net, ifname);
	else
		goto errout;

	if (dev == NULL) {
		err = -ENODEV;
		goto errout;
	}

	err = FUNC2(skb, dev, ifm, extack, tb, ifname, 0);
errout:
	return err;
}