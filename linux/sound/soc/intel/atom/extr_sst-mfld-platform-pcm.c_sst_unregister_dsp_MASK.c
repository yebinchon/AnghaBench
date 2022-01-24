#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sst_device {int /*<<< orphan*/  name; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sst_device* sst ; 
 int /*<<< orphan*/  sst_lock ; 

int FUNC5(struct sst_device *dev)
{
	if (FUNC0(!dev))
		return -EINVAL;
	if (dev != sst)
		return -EINVAL;

	FUNC3(&sst_lock);

	if (!sst) {
		FUNC4(&sst_lock);
		return -EIO;
	}

	FUNC2(sst->dev->driver->owner);
	FUNC1(dev->dev, "unreg %s\n", sst->name);
	sst = NULL;
	FUNC4(&sst_lock);
	return 0;
}