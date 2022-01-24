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
struct TYPE_2__ {int addr_gen_mode; } ;
struct inet6_dev {int /*<<< orphan*/  dev; TYPE_1__ cnf; } ;
struct in6_addr {int /*<<< orphan*/  s6_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IFA_F_STABLE_PRIVACY ; 
#define  IN6_ADDR_GEN_MODE_EUI64 131 
#define  IN6_ADDR_GEN_MODE_NONE 130 
#define  IN6_ADDR_GEN_MODE_RANDOM 129 
#define  IN6_ADDR_GEN_MODE_STABLE_PRIVACY 128 
 int /*<<< orphan*/  FUNC0 (struct inet6_dev*,struct in6_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct in6_addr*,int /*<<< orphan*/ ,struct inet6_dev*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct inet6_dev *idev, bool prefix_route)
{
	struct in6_addr addr;

	/* no link local addresses on L3 master devices */
	if (FUNC7(idev->dev))
		return;

	FUNC3(&addr, FUNC2(0xFE800000), 0, 0, 0);

	switch (idev->cnf.addr_gen_mode) {
	case IN6_ADDR_GEN_MODE_RANDOM:
		FUNC4(idev);
		/* fallthrough */
	case IN6_ADDR_GEN_MODE_STABLE_PRIVACY:
		if (!FUNC6(&addr, 0, idev))
			FUNC0(idev, &addr,
					       IFA_F_STABLE_PRIVACY);
		else if (prefix_route)
			FUNC1(&addr, 64, 0, idev->dev,
					      0, 0, GFP_KERNEL);
		break;
	case IN6_ADDR_GEN_MODE_EUI64:
		/* addrconf_add_linklocal also adds a prefix_route and we
		 * only need to care about prefix routes if ipv6_generate_eui64
		 * couldn't generate one.
		 */
		if (FUNC5(addr.s6_addr + 8, idev->dev) == 0)
			FUNC0(idev, &addr, 0);
		else if (prefix_route)
			FUNC1(&addr, 64, 0, idev->dev,
					      0, 0, GFP_KERNEL);
		break;
	case IN6_ADDR_GEN_MODE_NONE:
	default:
		/* will not add any link local address */
		break;
	}
}