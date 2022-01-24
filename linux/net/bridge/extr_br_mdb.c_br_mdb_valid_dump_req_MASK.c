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
struct br_port_msg {scalar_t__ ifindex; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ FUNC2 (struct nlmsghdr const*,int) ; 
 struct br_port_msg* FUNC3 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(const struct nlmsghdr *nlh,
				 struct netlink_ext_ack *extack)
{
	struct br_port_msg *bpm;

	if (nlh->nlmsg_len < FUNC4(sizeof(*bpm))) {
		FUNC1(extack, "Invalid header for mdb dump request");
		return -EINVAL;
	}

	bpm = FUNC3(nlh);
	if (bpm->ifindex) {
		FUNC1(extack, "Filtering by device index is not supported for mdb dump request");
		return -EINVAL;
	}
	if (FUNC2(nlh, sizeof(*bpm))) {
		FUNC0(extack, "Invalid data after header in mdb dump request");
		return -EINVAL;
	}

	return 0;
}