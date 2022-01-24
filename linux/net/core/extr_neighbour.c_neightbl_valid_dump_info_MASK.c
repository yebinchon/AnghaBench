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
struct ndtmsg {scalar_t__ ndtm_pad2; scalar_t__ ndtm_pad1; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ FUNC1 (struct nlmsghdr const*,int) ; 
 struct ndtmsg* FUNC2 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(const struct nlmsghdr *nlh,
				    struct netlink_ext_ack *extack)
{
	struct ndtmsg *ndtm;

	if (nlh->nlmsg_len < FUNC3(sizeof(*ndtm))) {
		FUNC0(extack, "Invalid header for neighbor table dump request");
		return -EINVAL;
	}

	ndtm = FUNC2(nlh);
	if (ndtm->ndtm_pad1  || ndtm->ndtm_pad2) {
		FUNC0(extack, "Invalid values in header for neighbor table dump request");
		return -EINVAL;
	}

	if (FUNC1(nlh, sizeof(*ndtm))) {
		FUNC0(extack, "Invalid data after header in neighbor table dump request");
		return -EINVAL;
	}

	return 0;
}