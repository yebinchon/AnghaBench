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
struct sk_buff {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netconfmsg {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NETCONFA_IFINDEX 128 
 int NETCONFA_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  devconf_ipv4_policy ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct nlmsghdr const*,int,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC4 (struct nlmsghdr const*,int,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
				      const struct nlmsghdr *nlh,
				      struct nlattr **tb,
				      struct netlink_ext_ack *extack)
{
	int i, err;

	if (nlh->nlmsg_len < FUNC2(sizeof(struct netconfmsg))) {
		FUNC0(extack, "ipv4: Invalid header for netconf get request");
		return -EINVAL;
	}

	if (!FUNC1(skb))
		return FUNC3(nlh, sizeof(struct netconfmsg),
					      tb, NETCONFA_MAX,
					      devconf_ipv4_policy, extack);

	err = FUNC4(nlh, sizeof(struct netconfmsg),
					    tb, NETCONFA_MAX,
					    devconf_ipv4_policy, extack);
	if (err)
		return err;

	for (i = 0; i <= NETCONFA_MAX; i++) {
		if (!tb[i])
			continue;

		switch (i) {
		case NETCONFA_IFINDEX:
			break;
		default:
			FUNC0(extack, "ipv4: Unsupported attribute in netconf get request");
			return -EINVAL;
		}
	}

	return 0;
}