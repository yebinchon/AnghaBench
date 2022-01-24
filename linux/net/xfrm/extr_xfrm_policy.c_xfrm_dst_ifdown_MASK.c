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
struct dst_entry {struct net_device* dev; scalar_t__ xfrm; } ;
struct TYPE_2__ {struct net_device* loopback_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct dst_entry* FUNC3 (struct dst_entry*) ; 

void FUNC4(struct dst_entry *dst, struct net_device *dev)
{
	while ((dst = FUNC3(dst)) && dst->xfrm && dst->dev == dev) {
		dst->dev = FUNC1(dev)->loopback_dev;
		FUNC0(dst->dev);
		FUNC2(dev);
	}
}