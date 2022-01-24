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
typedef  scalar_t__ u32 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int nlmsg_type; int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrlblmsg {scalar_t__ ifal_family; int ifal_prefixlen; int /*<<< orphan*/  ifal_index; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 size_t IFAL_ADDRESS ; 
 size_t IFAL_LABEL ; 
 int /*<<< orphan*/  IFAL_MAX ; 
 scalar_t__ IPV6_ADDR_LABEL_DEFAULT ; 
 int NLM_F_REPLACE ; 
#define  RTM_DELADDRLABEL 129 
#define  RTM_NEWADDRLABEL 128 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifal_policy ; 
 int FUNC1 (struct net*,struct in6_addr*,int,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC2 (struct net*,struct in6_addr*,int,int /*<<< orphan*/ ) ; 
 struct in6_addr* FUNC3 (struct nlattr*) ; 
 scalar_t__ FUNC4 (struct nlattr*) ; 
 struct ifaddrlblmsg* FUNC5 (struct nlmsghdr*) ; 
 int FUNC6 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct net* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct nlmsghdr *nlh,
			     struct netlink_ext_ack *extack)
{
	struct net *net = FUNC7(skb->sk);
	struct ifaddrlblmsg *ifal;
	struct nlattr *tb[IFAL_MAX+1];
	struct in6_addr *pfx;
	u32 label;
	int err = 0;

	err = FUNC6(nlh, sizeof(*ifal), tb, IFAL_MAX,
				     ifal_policy, extack);
	if (err < 0)
		return err;

	ifal = FUNC5(nlh);

	if (ifal->ifal_family != AF_INET6 ||
	    ifal->ifal_prefixlen > 128)
		return -EINVAL;

	if (!tb[IFAL_ADDRESS])
		return -EINVAL;
	pfx = FUNC3(tb[IFAL_ADDRESS]);

	if (!tb[IFAL_LABEL])
		return -EINVAL;
	label = FUNC4(tb[IFAL_LABEL]);
	if (label == IPV6_ADDR_LABEL_DEFAULT)
		return -EINVAL;

	switch (nlh->nlmsg_type) {
	case RTM_NEWADDRLABEL:
		if (ifal->ifal_index &&
		    !FUNC0(net, ifal->ifal_index))
			return -EINVAL;

		err = FUNC1(net, pfx, ifal->ifal_prefixlen,
				     ifal->ifal_index, label,
				     nlh->nlmsg_flags & NLM_F_REPLACE);
		break;
	case RTM_DELADDRLABEL:
		err = FUNC2(net, pfx, ifal->ifal_prefixlen,
				     ifal->ifal_index);
		break;
	default:
		err = -EOPNOTSUPP;
	}
	return err;
}