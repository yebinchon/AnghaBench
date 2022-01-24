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
struct net_device {int dummy; } ;
struct TYPE_2__ {unsigned char nh_flags; } ;
struct arg_netdev_event {int /*<<< orphan*/  nh_flags; TYPE_1__ member_1; struct net_device* dev; } ;

/* Variables and functions */
 unsigned char RTNH_F_DEAD ; 
 int /*<<< orphan*/  RTNH_F_LINKDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arg_netdev_event*) ; 
 int /*<<< orphan*/  fib6_ifup ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

void FUNC3(struct net_device *dev, unsigned char nh_flags)
{
	struct arg_netdev_event arg = {
		.dev = dev,
		{
			.nh_flags = nh_flags,
		},
	};

	if (nh_flags & RTNH_F_DEAD && FUNC2(dev))
		arg.nh_flags |= RTNH_F_LINKDOWN;

	FUNC1(FUNC0(dev), fib6_ifup, &arg);
}