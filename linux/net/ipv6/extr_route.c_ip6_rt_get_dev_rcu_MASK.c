#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct fib6_result {int fib6_flags; TYPE_3__* f6i; TYPE_1__* nh; } ;
struct TYPE_8__ {struct net_device* loopback_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {TYPE_2__ fib6_dst; } ;
struct TYPE_5__ {struct net_device* fib_nh_dev; } ;

/* Variables and functions */
 int RTF_ANYCAST ; 
 int RTF_LOCAL ; 
 TYPE_4__* FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct net_device *FUNC5(const struct fib6_result *res)
{
	struct net_device *dev = res->nh->fib_nh_dev;

	if (res->fib6_flags & (RTF_LOCAL | RTF_ANYCAST)) {
		/* for copies of local routes, dst->dev needs to be the
		 * device if it is a master device, the master device if
		 * device is enslaved, and the loopback as the default
		 */
		if (FUNC3(dev) &&
		    !FUNC4(&res->f6i->fib6_dst.addr))
			dev = FUNC1(dev);
		else if (!FUNC2(dev))
			dev = FUNC0(dev)->loopback_dev;
		/* last case is netif_is_l3_master(dev) is true in which
		 * case we want dev returned to be dev
		 */
	}

	return dev;
}