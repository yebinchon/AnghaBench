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
typedef  int /*<<< orphan*/  u8 ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 size_t IFLA_INET6_ADDR_GEN_MODE ; 
 int /*<<< orphan*/  IFLA_INET6_MAX ; 
 size_t IFLA_INET6_TOKEN ; 
 struct inet6_dev* FUNC0 (struct net_device const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inet6_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device const*) ; 
 int /*<<< orphan*/  inet6_af_policy ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(const struct net_device *dev,
				  const struct nlattr *nla)
{
	struct nlattr *tb[IFLA_INET6_MAX + 1];
	struct inet6_dev *idev = NULL;
	int err;

	if (dev) {
		idev = FUNC0(dev);
		if (!idev)
			return -EAFNOSUPPORT;
	}

	err = FUNC5(tb, IFLA_INET6_MAX, nla,
					  inet6_af_policy, NULL);
	if (err)
		return err;

	if (!tb[IFLA_INET6_TOKEN] && !tb[IFLA_INET6_ADDR_GEN_MODE])
		return -EINVAL;

	if (tb[IFLA_INET6_ADDR_GEN_MODE]) {
		u8 mode = FUNC4(tb[IFLA_INET6_ADDR_GEN_MODE]);

		if (FUNC1(mode) < 0)
			return -EINVAL;
		if (dev && FUNC2(idev, FUNC3(dev), mode) < 0)
			return -EINVAL;
	}

	return 0;
}