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
struct device {scalar_t__ devt; int /*<<< orphan*/  kobj; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cdev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device*) ; 

int FUNC4(struct cdev *cdev, struct device *dev)
{
	int rc = 0;

	if (dev->devt) {
		FUNC2(cdev, &dev->kobj);

		rc = FUNC0(cdev, dev->devt, 1);
		if (rc)
			return rc;
	}

	rc = FUNC3(dev);
	if (rc)
		FUNC1(cdev);

	return rc;
}