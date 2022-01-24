#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sst_device {int /*<<< orphan*/  name; TYPE_2__* dev; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sst_device* sst ; 
 int /*<<< orphan*/  sst_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct sst_device *dev)
{
	if (FUNC0(!dev))
		return -EINVAL;
	if (!FUNC6(dev->dev->driver->owner))
		return -ENODEV;
	FUNC4(&sst_lock);
	if (sst) {
		FUNC2(dev->dev, "we already have a device %s\n", sst->name);
		FUNC3(dev->dev->driver->owner);
		FUNC5(&sst_lock);
		return -EEXIST;
	}
	FUNC1(dev->dev, "registering device %s\n", dev->name);
	sst = dev;
	FUNC5(&sst_lock);
	return 0;
}