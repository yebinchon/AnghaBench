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
struct reply_func {int (* cb ) (struct net_device*,struct nlmsghdr*,int /*<<< orphan*/ ,struct nlattr**,struct sk_buff*) ;int /*<<< orphan*/  type; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; int /*<<< orphan*/  nlmsg_seq; int /*<<< orphan*/  nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int /*<<< orphan*/  dcbnl_ops; } ;
struct net {int dummy; } ;
struct dcbmsg {size_t cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 size_t DCB_ATTR_IFNAME ; 
 int /*<<< orphan*/  DCB_ATTR_MAX ; 
 size_t DCB_CMD_MAX ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ RTM_SETDCB ; 
 struct net_device* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlmsghdr**) ; 
 int /*<<< orphan*/  dcbnl_rtnl_policy ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 struct dcbmsg* FUNC5 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct reply_func* reply_funcs ; 
 int FUNC9 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct net_device*,struct nlmsghdr*,int /*<<< orphan*/ ,struct nlattr**,struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct nlmsghdr *nlh,
		    struct netlink_ext_ack *extack)
{
	struct net *net = FUNC10(skb->sk);
	struct net_device *netdev;
	struct dcbmsg *dcb = FUNC5(nlh);
	struct nlattr *tb[DCB_ATTR_MAX + 1];
	u32 portid = skb ? FUNC0(skb).portid : 0;
	int ret = -EINVAL;
	struct sk_buff *reply_skb;
	struct nlmsghdr *reply_nlh = NULL;
	const struct reply_func *fn;

	if ((nlh->nlmsg_type == RTM_SETDCB) && !FUNC3(skb, CAP_NET_ADMIN))
		return -EPERM;

	ret = FUNC8(nlh, sizeof(*dcb), tb, DCB_ATTR_MAX,
				     dcbnl_rtnl_policy, extack);
	if (ret < 0)
		return ret;

	if (dcb->cmd > DCB_CMD_MAX)
		return -EINVAL;

	/* check if a reply function has been defined for the command */
	fn = &reply_funcs[dcb->cmd];
	if (!fn->cb)
		return -EOPNOTSUPP;

	if (!tb[DCB_ATTR_IFNAME])
		return -EINVAL;

	netdev = FUNC1(net, FUNC4(tb[DCB_ATTR_IFNAME]));
	if (!netdev)
		return -ENODEV;

	if (!netdev->dcbnl_ops)
		return -EOPNOTSUPP;

	reply_skb = FUNC2(fn->type, dcb->cmd, portid, nlh->nlmsg_seq,
				 nlh->nlmsg_flags, &reply_nlh);
	if (!reply_skb)
		return -ENOBUFS;

	ret = fn->cb(netdev, nlh, nlh->nlmsg_seq, tb, reply_skb);
	if (ret < 0) {
		FUNC7(reply_skb);
		goto out;
	}

	FUNC6(reply_skb, reply_nlh);

	ret = FUNC9(reply_skb, net, portid);
out:
	return ret;
}