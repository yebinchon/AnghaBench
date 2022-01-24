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
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ndmsg {int dummy; } ;
struct ifinfomsg {int ifi_index; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t IFLA_MASTER ; 
 int /*<<< orphan*/  IFLA_MAX ; 
 int /*<<< orphan*/  ifla_policy ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct nlattr*) ; 
 struct ifinfomsg* FUNC2 (struct nlmsghdr const*) ; 
 int FUNC3 (struct nlmsghdr const*) ; 
 int FUNC4 (struct nlmsghdr const*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC5(const struct nlmsghdr *nlh,
				 int *br_idx, int *brport_idx,
				 struct netlink_ext_ack *extack)
{
	struct nlattr *tb[IFLA_MAX+1];
	int err;

	/* A hack to preserve kernel<->userspace interface.
	 * Before Linux v4.12 this code accepted ndmsg since iproute2 v3.3.0.
	 * However, ndmsg is shorter than ifinfomsg thus nlmsg_parse() bails.
	 * So, check for ndmsg with an optional u32 attribute (not used here).
	 * Fortunately these sizes don't conflict with the size of ifinfomsg
	 * with an optional attribute.
	 */
	if (FUNC3(nlh) != sizeof(struct ndmsg) &&
	    (FUNC3(nlh) != sizeof(struct ndmsg) +
	     FUNC0(sizeof(u32)))) {
		struct ifinfomsg *ifm;

		err = FUNC4(nlh, sizeof(struct ifinfomsg),
					     tb, IFLA_MAX, ifla_policy,
					     extack);
		if (err < 0) {
			return -EINVAL;
		} else if (err == 0) {
			if (tb[IFLA_MASTER])
				*br_idx = FUNC1(tb[IFLA_MASTER]);
		}

		ifm = FUNC2(nlh);
		*brport_idx = ifm->ifi_index;
	}
	return 0;
}