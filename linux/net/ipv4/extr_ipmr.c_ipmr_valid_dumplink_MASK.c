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
struct ifinfomsg {scalar_t__ ifi_index; scalar_t__ ifi_change; scalar_t__ ifi_flags; scalar_t__ ifi_type; scalar_t__ __ifi_pad; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ FUNC1 (struct nlmsghdr const*,int) ; 
 struct ifinfomsg* FUNC2 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(const struct nlmsghdr *nlh,
			       struct netlink_ext_ack *extack)
{
	struct ifinfomsg *ifm;

	if (nlh->nlmsg_len < FUNC3(sizeof(*ifm))) {
		FUNC0(extack, "ipv4: Invalid header for ipmr link dump");
		return -EINVAL;
	}

	if (FUNC1(nlh, sizeof(*ifm))) {
		FUNC0(extack, "Invalid data after header in ipmr link dump");
		return -EINVAL;
	}

	ifm = FUNC2(nlh);
	if (ifm->__ifi_pad || ifm->ifi_type || ifm->ifi_flags ||
	    ifm->ifi_change || ifm->ifi_index) {
		FUNC0(extack, "Invalid values in header for ipmr link dump request");
		return -EINVAL;
	}

	return 0;
}