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
struct net_device {scalar_t__ dn_ptr; } ;

/* Variables and functions */
 struct net_device* decnet_default_device ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  dndev_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct net_device *FUNC3(void)
{
	struct net_device *dev;

	FUNC1(&dndev_lock);
	dev = decnet_default_device;
	if (dev) {
		if (dev->dn_ptr)
			FUNC0(dev);
		else
			dev = NULL;
	}
	FUNC2(&dndev_lock);

	return dev;
}