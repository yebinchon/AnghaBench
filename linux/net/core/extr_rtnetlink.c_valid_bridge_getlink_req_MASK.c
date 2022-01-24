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
typedef  int /*<<< orphan*/  u32 ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_index; scalar_t__ ifi_change; scalar_t__ ifi_flags; scalar_t__ ifi_type; scalar_t__ __ifi_pad; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IFLA_EXT_MASK 128 
 int IFLA_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  ifla_policy ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 struct ifinfomsg* FUNC2 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct nlmsghdr const*,int,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC5 (struct nlmsghdr const*,int,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC6(const struct nlmsghdr *nlh,
				    bool strict_check, u32 *filter_mask,
				    struct netlink_ext_ack *extack)
{
	struct nlattr *tb[IFLA_MAX+1];
	int err, i;

	if (strict_check) {
		struct ifinfomsg *ifm;

		if (nlh->nlmsg_len < FUNC3(sizeof(*ifm))) {
			FUNC0(extack, "Invalid header for bridge link dump");
			return -EINVAL;
		}

		ifm = FUNC2(nlh);
		if (ifm->__ifi_pad || ifm->ifi_type || ifm->ifi_flags ||
		    ifm->ifi_change || ifm->ifi_index) {
			FUNC0(extack, "Invalid values in header for bridge link dump request");
			return -EINVAL;
		}

		err = FUNC5(nlh,
						    sizeof(struct ifinfomsg),
						    tb, IFLA_MAX, ifla_policy,
						    extack);
	} else {
		err = FUNC4(nlh, sizeof(struct ifinfomsg),
					     tb, IFLA_MAX, ifla_policy,
					     extack);
	}
	if (err < 0)
		return err;

	/* new attributes should only be added with strict checking */
	for (i = 0; i <= IFLA_MAX; ++i) {
		if (!tb[i])
			continue;

		switch (i) {
		case IFLA_EXT_MASK:
			*filter_mask = FUNC1(tb[i]);
			break;
		default:
			if (strict_check) {
				FUNC0(extack, "Unsupported attribute in bridge link dump request");
				return -EINVAL;
			}
		}
	}

	return 0;
}