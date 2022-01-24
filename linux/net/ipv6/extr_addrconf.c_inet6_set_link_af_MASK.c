#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr_gen_mode; } ;
struct inet6_dev {TYPE_1__ cnf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t IFLA_INET6_ADDR_GEN_MODE ; 
 int /*<<< orphan*/  IFLA_INET6_MAX ; 
 size_t IFLA_INET6_TOKEN ; 
 struct inet6_dev* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 scalar_t__ FUNC5 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, const struct nlattr *nla)
{
	struct inet6_dev *idev = FUNC1(dev);
	struct nlattr *tb[IFLA_INET6_MAX + 1];
	int err;

	if (FUNC5(tb, IFLA_INET6_MAX, nla, NULL, NULL) < 0)
		FUNC0();

	if (tb[IFLA_INET6_TOKEN]) {
		err = FUNC2(idev, FUNC3(tb[IFLA_INET6_TOKEN]));
		if (err)
			return err;
	}

	if (tb[IFLA_INET6_ADDR_GEN_MODE]) {
		u8 mode = FUNC4(tb[IFLA_INET6_ADDR_GEN_MODE]);

		idev->cnf.addr_gen_mode = mode;
	}

	return 0;
}