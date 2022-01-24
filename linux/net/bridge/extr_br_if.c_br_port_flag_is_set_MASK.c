#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int dummy; } ;
struct net_bridge_port {unsigned long flags; } ;

/* Variables and functions */
 struct net_bridge_port* FUNC0 (struct net_device const*) ; 

bool FUNC1(const struct net_device *dev, unsigned long flag)
{
	struct net_bridge_port *p;

	p = FUNC0(dev);
	if (!p)
		return false;

	return p->flags & flag;
}