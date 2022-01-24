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
typedef  scalar_t__ u32 ;
struct inet6_ifaddr {TYPE_1__* idev; scalar_t__ rt_priority; int /*<<< orphan*/  prefix_len; int /*<<< orphan*/  addr; } ;
struct fib6_info {scalar_t__ fib6_metric; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IP6_RT_PRIO_ADDRCONF ; 
 int /*<<< orphan*/  RTF_DEFAULT ; 
 struct fib6_info* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,unsigned long,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fib6_info*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct fib6_info*) ; 

__attribute__((used)) static int FUNC7(struct inet6_ifaddr *ifp,
			       unsigned long expires, u32 flags)
{
	struct fib6_info *f6i;
	u32 prio;

	f6i = FUNC0(&ifp->addr, ifp->prefix_len,
					ifp->idev->dev, 0, RTF_DEFAULT, true);
	if (!f6i)
		return -ENOENT;

	prio = ifp->rt_priority ? : IP6_RT_PRIO_ADDRCONF;
	if (f6i->fib6_metric != prio) {
		/* delete old one */
		FUNC6(FUNC2(ifp->idev->dev), f6i);

		/* add new one */
		FUNC1(&ifp->addr, ifp->prefix_len,
				      ifp->rt_priority, ifp->idev->dev,
				      expires, flags, GFP_KERNEL);
	} else {
		if (!expires)
			FUNC3(f6i);
		else
			FUNC5(f6i, expires);

		FUNC4(f6i);
	}

	return 0;
}