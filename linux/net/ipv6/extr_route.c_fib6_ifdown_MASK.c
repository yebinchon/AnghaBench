#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_3__ {struct fib6_info* fib6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib6_info {int fib6_flags; TYPE_2__* fib6_nh; int /*<<< orphan*/  fib6_nsiblings; int /*<<< orphan*/  should_flush; scalar_t__ nh; } ;
struct arg_netdev_event {int event; struct net_device* dev; } ;
struct TYPE_4__ {int fib_nh_flags; struct net_device const* fib_nh_dev; } ;

/* Variables and functions */
#define  NETDEV_CHANGE 130 
#define  NETDEV_DOWN 129 
#define  NETDEV_UNREGISTER 128 
 int RTF_ANYCAST ; 
 int RTF_LOCAL ; 
 int RTNH_F_DEAD ; 
 int RTNH_F_LINKDOWN ; 
 struct net* FUNC0 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct fib6_info*) ; 
 unsigned int FUNC2 (struct fib6_info*,struct net_device const*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct fib6_info*,struct net_device const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct fib6_info*,struct net_device const*) ; 

__attribute__((used)) static int FUNC7(struct fib6_info *rt, void *p_arg)
{
	const struct arg_netdev_event *arg = p_arg;
	const struct net_device *dev = arg->dev;
	struct net *net = FUNC0(dev);

	if (rt == net->ipv6.fib6_null_entry || rt->nh)
		return 0;

	switch (arg->event) {
	case NETDEV_UNREGISTER:
		return rt->fib6_nh->fib_nh_dev == dev ? -1 : 0;
	case NETDEV_DOWN:
		if (rt->should_flush)
			return -1;
		if (!rt->fib6_nsiblings)
			return rt->fib6_nh->fib_nh_dev == dev ? -1 : 0;
		if (FUNC6(rt, dev)) {
			unsigned int count;

			count = FUNC2(rt, dev);
			if (rt->fib6_nsiblings + 1 == count) {
				FUNC3(rt);
				return -1;
			}
			FUNC4(rt, dev, RTNH_F_DEAD |
						   RTNH_F_LINKDOWN);
			FUNC1(net, rt);
			FUNC5(rt);
		}
		return -2;
	case NETDEV_CHANGE:
		if (rt->fib6_nh->fib_nh_dev != dev ||
		    rt->fib6_flags & (RTF_LOCAL | RTF_ANYCAST))
			break;
		rt->fib6_nh->fib_nh_flags |= RTNH_F_LINKDOWN;
		FUNC5(rt);
		break;
	}

	return 0;
}