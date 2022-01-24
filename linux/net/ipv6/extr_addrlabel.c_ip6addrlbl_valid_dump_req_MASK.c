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
struct ifaddrlblmsg {scalar_t__ ifal_seq; scalar_t__ ifal_index; scalar_t__ ifal_flags; scalar_t__ ifal_prefixlen; scalar_t__ __ifal_reserved; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ FUNC1 (struct nlmsghdr const*,int) ; 
 struct ifaddrlblmsg* FUNC2 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(const struct nlmsghdr *nlh,
				     struct netlink_ext_ack *extack)
{
	struct ifaddrlblmsg *ifal;

	if (nlh->nlmsg_len < FUNC3(sizeof(*ifal))) {
		FUNC0(extack, "Invalid header for address label dump request");
		return -EINVAL;
	}

	ifal = FUNC2(nlh);
	if (ifal->__ifal_reserved || ifal->ifal_prefixlen ||
	    ifal->ifal_flags || ifal->ifal_index || ifal->ifal_seq) {
		FUNC0(extack, "Invalid values in header for address label dump request");
		return -EINVAL;
	}

	if (FUNC1(nlh, sizeof(*ifal))) {
		FUNC0(extack, "Invalid data after header for address label dump request");
		return -EINVAL;
	}

	return 0;
}