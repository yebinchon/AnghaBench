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
struct net_bridge {int /*<<< orphan*/  multicast_lock; } ;

/* Variables and functions */
 int FUNC0 (struct net_bridge*) ; 
 struct net_bridge* FUNC1 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4(const struct net_device *dev)
{
	struct net_bridge *br = FUNC1(dev);
	bool is_router;

	FUNC2(&br->multicast_lock);
	is_router = FUNC0(br);
	FUNC3(&br->multicast_lock);
	return is_router;
}