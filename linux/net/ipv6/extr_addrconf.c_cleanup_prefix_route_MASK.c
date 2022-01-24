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
struct inet6_ifaddr {TYPE_1__* idev; int /*<<< orphan*/  prefix_len; int /*<<< orphan*/  addr; } ;
struct fib6_info {int fib6_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTF_DEFAULT ; 
 int RTF_EXPIRES ; 
 struct fib6_info* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib6_info*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct fib6_info*) ; 

__attribute__((used)) static void
FUNC5(struct inet6_ifaddr *ifp, unsigned long expires, bool del_rt)
{
	struct fib6_info *f6i;

	f6i = FUNC0(&ifp->addr, ifp->prefix_len,
					ifp->idev->dev, 0, RTF_DEFAULT, true);
	if (f6i) {
		if (del_rt)
			FUNC4(FUNC1(ifp->idev->dev), f6i);
		else {
			if (!(f6i->fib6_flags & RTF_EXPIRES))
				FUNC3(f6i, expires);
			FUNC2(f6i);
		}
	}
}