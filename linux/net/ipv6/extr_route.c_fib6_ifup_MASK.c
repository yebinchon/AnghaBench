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
struct TYPE_3__ {struct fib6_info* fib6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib6_info {TYPE_2__* fib6_nh; int /*<<< orphan*/  nh; } ;
struct arg_netdev_event {scalar_t__ dev; int /*<<< orphan*/  nh_flags; } ;
struct TYPE_4__ {scalar_t__ fib_nh_dev; int /*<<< orphan*/  fib_nh_flags; } ;

/* Variables and functions */
 struct net* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib6_info*) ; 

__attribute__((used)) static int FUNC3(struct fib6_info *rt, void *p_arg)
{
	const struct arg_netdev_event *arg = p_arg;
	struct net *net = FUNC0(arg->dev);

	if (rt != net->ipv6.fib6_null_entry && !rt->nh &&
	    rt->fib6_nh->fib_nh_dev == arg->dev) {
		rt->fib6_nh->fib_nh_flags &= ~arg->nh_flags;
		FUNC1(net, rt);
		FUNC2(rt);
	}

	return 0;
}