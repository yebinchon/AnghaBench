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
struct nfc_dev {int dev_up; int /*<<< orphan*/  dev; TYPE_1__* ops; scalar_t__ active_target; scalar_t__ polling; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dev_down ) (struct nfc_dev*) ;} ;

/* Variables and functions */
 int EALREADY ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_dev*) ; 

int FUNC6(struct nfc_dev *dev)
{
	int rc = 0;

	FUNC4("dev_name=%s\n", FUNC0(&dev->dev));

	FUNC2(&dev->dev);

	if (!FUNC1(&dev->dev)) {
		rc = -ENODEV;
		goto error;
	}

	if (!dev->dev_up) {
		rc = -EALREADY;
		goto error;
	}

	if (dev->polling || dev->active_target) {
		rc = -EBUSY;
		goto error;
	}

	if (dev->ops->dev_down)
		dev->ops->dev_down(dev);

	dev->dev_up = false;

error:
	FUNC3(&dev->dev);
	return rc;
}