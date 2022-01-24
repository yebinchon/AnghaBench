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
struct switchdev_obj {int flags; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int SWITCHDEV_F_DEFER ; 
 int FUNC1 (struct net_device*,struct switchdev_obj const*) ; 
 int FUNC2 (struct net_device*,struct switchdev_obj const*) ; 

int FUNC3(struct net_device *dev,
			   const struct switchdev_obj *obj)
{
	if (obj->flags & SWITCHDEV_F_DEFER)
		return FUNC1(dev, obj);
	FUNC0();
	return FUNC2(dev, obj);
}