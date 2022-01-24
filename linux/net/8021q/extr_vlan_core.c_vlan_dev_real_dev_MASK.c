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
typedef  struct net_device const net_device ;
struct TYPE_2__ {struct net_device const* real_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device const*) ; 
 TYPE_1__* FUNC1 (struct net_device const*) ; 

struct net_device *FUNC2(const struct net_device *dev)
{
	struct net_device *ret = FUNC1(dev)->real_dev;

	while (FUNC0(ret))
		ret = FUNC1(ret)->real_dev;

	return ret;
}