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
struct nfc_dev {int polling; int /*<<< orphan*/  dev; int /*<<< orphan*/  rf_mode; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop_poll ) (struct nfc_dev*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  NFC_RF_NONE ; 
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

	if (!dev->polling) {
		rc = -EINVAL;
		goto error;
	}

	dev->ops->stop_poll(dev);
	dev->polling = false;
	dev->rf_mode = NFC_RF_NONE;

error:
	FUNC3(&dev->dev);
	return rc;
}