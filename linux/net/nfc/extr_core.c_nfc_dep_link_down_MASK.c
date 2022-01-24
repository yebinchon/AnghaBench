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
struct nfc_dev {int dep_link_up; int /*<<< orphan*/  dev; int /*<<< orphan*/  rf_mode; int /*<<< orphan*/ * active_target; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dep_link_down ) (struct nfc_dev*) ;} ;

/* Variables and functions */
 int EALREADY ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  NFC_RF_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nfc_dev*) ; 

int FUNC8(struct nfc_dev *dev)
{
	int rc = 0;

	FUNC6("dev_name=%s\n", FUNC0(&dev->dev));

	if (!dev->ops->dep_link_down)
		return -EOPNOTSUPP;

	FUNC2(&dev->dev);

	if (!FUNC1(&dev->dev)) {
		rc = -ENODEV;
		goto error;
	}

	if (dev->dep_link_up == false) {
		rc = -EALREADY;
		goto error;
	}

	rc = dev->ops->dep_link_down(dev);
	if (!rc) {
		dev->dep_link_up = false;
		dev->active_target = NULL;
		dev->rf_mode = NFC_RF_NONE;
		FUNC5(dev);
		FUNC4(dev);
	}

error:
	FUNC3(&dev->dev);

	return rc;
}