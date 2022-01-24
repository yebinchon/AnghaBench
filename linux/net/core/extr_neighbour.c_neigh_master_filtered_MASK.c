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
struct net_device {int ifindex; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct net_device*) ; 

__attribute__((used)) static bool FUNC1(struct net_device *dev, int master_idx)
{
	struct net_device *master;

	if (!master_idx)
		return false;

	master = dev ? FUNC0(dev) : NULL;
	if (!master || master->ifindex != master_idx)
		return true;

	return false;
}