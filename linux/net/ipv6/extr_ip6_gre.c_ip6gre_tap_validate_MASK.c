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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 scalar_t__ ETH_ALEN ; 
 size_t IFLA_ADDRESS ; 
 size_t IFLA_GRE_REMOTE ; 
 int FUNC0 (struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC1 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 struct in6_addr FUNC4 (struct nlattr*) ; 
 scalar_t__ FUNC5 (struct nlattr*) ; 

__attribute__((used)) static int FUNC6(struct nlattr *tb[], struct nlattr *data[],
			       struct netlink_ext_ack *extack)
{
	struct in6_addr daddr;

	if (tb[IFLA_ADDRESS]) {
		if (FUNC5(tb[IFLA_ADDRESS]) != ETH_ALEN)
			return -EINVAL;
		if (!FUNC2(FUNC3(tb[IFLA_ADDRESS])))
			return -EADDRNOTAVAIL;
	}

	if (!data)
		goto out;

	if (data[IFLA_GRE_REMOTE]) {
		daddr = FUNC4(data[IFLA_GRE_REMOTE]);
		if (FUNC1(&daddr))
			return -EINVAL;
	}

out:
	return FUNC0(tb, data, extack);
}