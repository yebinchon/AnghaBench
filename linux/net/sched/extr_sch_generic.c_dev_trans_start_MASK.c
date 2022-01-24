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
struct net_device {unsigned int num_tx_queues; } ;
struct TYPE_2__ {unsigned long trans_start; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (struct net_device*) ; 
 TYPE_1__* FUNC2 (struct net_device*,unsigned int) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 struct net_device* FUNC5 (struct net_device*) ; 

unsigned long FUNC6(struct net_device *dev)
{
	unsigned long val, res;
	unsigned int i;

	if (FUNC0(dev))
		dev = FUNC5(dev);
	else if (FUNC3(dev))
		dev = FUNC1(dev);
	res = FUNC2(dev, 0)->trans_start;
	for (i = 1; i < dev->num_tx_queues; i++) {
		val = FUNC2(dev, i)->trans_start;
		if (val && FUNC4(val, res))
			res = val;
	}

	return res;
}