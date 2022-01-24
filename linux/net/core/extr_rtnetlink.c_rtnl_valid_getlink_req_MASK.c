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
struct ifinfomsg {scalar_t__ ifi_change; scalar_t__ ifi_flags; scalar_t__ ifi_type; scalar_t__ __ifi_pad; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IFLA_EXT_MASK 130 
#define  IFLA_IFNAME 129 
 int IFLA_MAX ; 
#define  IFLA_TARGET_NETNSID 128 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  ifla_policy ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct ifinfomsg* FUNC2 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct nlmsghdr const*,int,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC5 (struct nlmsghdr const*,int,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
				  const struct nlmsghdr *nlh,
				  struct nlattr **tb,
				  struct netlink_ext_ack *extack)
{
	struct ifinfomsg *ifm;
	int i, err;

	if (nlh->nlmsg_len < FUNC3(sizeof(*ifm))) {
		FUNC0(extack, "Invalid header for get link");
		return -EINVAL;
	}

	if (!FUNC1(skb))
		return FUNC4(nlh, sizeof(*ifm), tb, IFLA_MAX,
					      ifla_policy, extack);

	ifm = FUNC2(nlh);
	if (ifm->__ifi_pad || ifm->ifi_type || ifm->ifi_flags ||
	    ifm->ifi_change) {
		FUNC0(extack, "Invalid values in header for get link request");
		return -EINVAL;
	}

	err = FUNC5(nlh, sizeof(*ifm), tb, IFLA_MAX,
					    ifla_policy, extack);
	if (err)
		return err;

	for (i = 0; i <= IFLA_MAX; i++) {
		if (!tb[i])
			continue;

		switch (i) {
		case IFLA_IFNAME:
		case IFLA_EXT_MASK:
		case IFLA_TARGET_NETNSID:
			break;
		default:
			FUNC0(extack, "Unsupported attribute in get link request");
			return -EINVAL;
		}
	}

	return 0;
}