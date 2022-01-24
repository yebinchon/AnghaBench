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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 scalar_t__ ETH_ALEN ; 
 size_t IFLA_ADDRESS ; 
 size_t IFLA_GRE_REMOTE ; 
 int FUNC0 (struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 scalar_t__ FUNC4 (struct nlattr*) ; 

__attribute__((used)) static int FUNC5(struct nlattr *tb[], struct nlattr *data[],
			      struct netlink_ext_ack *extack)
{
	__be32 daddr;

	if (tb[IFLA_ADDRESS]) {
		if (FUNC4(tb[IFLA_ADDRESS]) != ETH_ALEN)
			return -EINVAL;
		if (!FUNC1(FUNC3(tb[IFLA_ADDRESS])))
			return -EADDRNOTAVAIL;
	}

	if (!data)
		goto out;

	if (data[IFLA_GRE_REMOTE]) {
		FUNC2(&daddr, FUNC3(data[IFLA_GRE_REMOTE]), 4);
		if (!daddr)
			return -EINVAL;
	}

out:
	return FUNC0(tb, data, extack);
}