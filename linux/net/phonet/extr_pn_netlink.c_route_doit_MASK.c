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
typedef  int u8 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct rtmsg {scalar_t__ rtm_table; scalar_t__ rtm_type; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 size_t RTA_DST ; 
 int /*<<< orphan*/  RTA_MAX ; 
 size_t RTA_OIF ; 
 scalar_t__ RTM_NEWROUTE ; 
 scalar_t__ RTN_UNICAST ; 
 scalar_t__ RT_TABLE_MAIN ; 
 struct net_device* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr*) ; 
 struct rtmsg* FUNC5 (struct nlmsghdr*) ; 
 int FUNC6 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC7 (struct net_device*,int) ; 
 int FUNC8 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct net_device*,int) ; 
 int /*<<< orphan*/  rtm_phonet_policy ; 
 struct net* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct nlmsghdr *nlh,
		      struct netlink_ext_ack *extack)
{
	struct net *net = FUNC10(skb->sk);
	struct nlattr *tb[RTA_MAX+1];
	struct net_device *dev;
	struct rtmsg *rtm;
	int err;
	u8 dst;

	if (!FUNC2(skb, CAP_NET_ADMIN))
		return -EPERM;

	if (!FUNC2(skb, CAP_SYS_ADMIN))
		return -EPERM;

	FUNC0();

	err = FUNC6(nlh, sizeof(*rtm), tb, RTA_MAX,
				     rtm_phonet_policy, extack);
	if (err < 0)
		return err;

	rtm = FUNC5(nlh);
	if (rtm->rtm_table != RT_TABLE_MAIN || rtm->rtm_type != RTN_UNICAST)
		return -EINVAL;
	if (tb[RTA_DST] == NULL || tb[RTA_OIF] == NULL)
		return -EINVAL;
	dst = FUNC4(tb[RTA_DST]);
	if (dst & 3) /* Phonet addresses only have 6 high-order bits */
		return -EINVAL;

	dev = FUNC1(net, FUNC3(tb[RTA_OIF]));
	if (dev == NULL)
		return -ENODEV;

	if (nlh->nlmsg_type == RTM_NEWROUTE)
		err = FUNC7(dev, dst);
	else
		err = FUNC8(dev, dst);
	if (!err)
		FUNC9(nlh->nlmsg_type, dev, dst);
	return err;
}