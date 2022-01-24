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
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct netlink_ext_ack {int dummy; } ;
struct if_stats_msg {scalar_t__ filter_mask; scalar_t__ ifindex; scalar_t__ pad2; scalar_t__ pad1; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ IFLA_STATS_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ FUNC2 (struct nlmsghdr const*,int) ; 
 struct if_stats_msg* FUNC3 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(const struct nlmsghdr *nlh, bool strict_check,
				bool is_dump, struct netlink_ext_ack *extack)
{
	struct if_stats_msg *ifsm;

	if (nlh->nlmsg_len < FUNC4(sizeof(*ifsm))) {
		FUNC1(extack, "Invalid header for stats dump");
		return -EINVAL;
	}

	if (!strict_check)
		return 0;

	ifsm = FUNC3(nlh);

	/* only requests using strict checks can pass data to influence
	 * the dump. The legacy exception is filter_mask.
	 */
	if (ifsm->pad1 || ifsm->pad2 || (is_dump && ifsm->ifindex)) {
		FUNC1(extack, "Invalid values in header for stats dump request");
		return -EINVAL;
	}
	if (FUNC2(nlh, sizeof(*ifsm))) {
		FUNC1(extack, "Invalid attributes after stats header");
		return -EINVAL;
	}
	if (ifsm->filter_mask >= FUNC0(IFLA_STATS_MAX + 1)) {
		FUNC1(extack, "Invalid stats requested through filter mask");
		return -EINVAL;
	}

	return 0;
}