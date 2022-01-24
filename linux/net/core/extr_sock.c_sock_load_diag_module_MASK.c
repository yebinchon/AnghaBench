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

/* Variables and functions */
 int AF_INET ; 
 int ENOENT ; 
 int IPPROTO_RAW ; 
 int /*<<< orphan*/  NETLINK_SOCK_DIAG ; 
 int /*<<< orphan*/  PF_NETLINK ; 
 int /*<<< orphan*/ * inet_protos ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(int family, int protocol)
{
	if (!protocol) {
		if (!FUNC2(family))
			return -ENOENT;

		return FUNC1("net-pf-%d-proto-%d-type-%d", PF_NETLINK,
				      NETLINK_SOCK_DIAG, family);
	}

#ifdef CONFIG_INET
	if (family == AF_INET &&
	    protocol != IPPROTO_RAW &&
	    !rcu_access_pointer(inet_protos[protocol]))
		return -ENOENT;
#endif

	return FUNC1("net-pf-%d-proto-%d-type-%d-%d", PF_NETLINK,
			      NETLINK_SOCK_DIAG, family, protocol);
}