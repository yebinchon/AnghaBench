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
struct nfc_dev {int fw_download_in_progress; int /*<<< orphan*/  dev; TYPE_1__* ops; scalar_t__ dev_up; } ;
struct TYPE_2__ {int (* fw_download ) (struct nfc_dev*,char const*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC5 (struct nfc_dev*,char const*) ; 

int FUNC6(struct nfc_dev *dev, const char *firmware_name)
{
	int rc = 0;

	FUNC4("%s do firmware %s\n", FUNC0(&dev->dev), firmware_name);

	FUNC2(&dev->dev);

	if (!FUNC1(&dev->dev)) {
		rc = -ENODEV;
		goto error;
	}

	if (dev->dev_up) {
		rc = -EBUSY;
		goto error;
	}

	if (!dev->ops->fw_download) {
		rc = -EOPNOTSUPP;
		goto error;
	}

	dev->fw_download_in_progress = true;
	rc = dev->ops->fw_download(dev, firmware_name);
	if (rc)
		dev->fw_download_in_progress = false;

error:
	FUNC3(&dev->dev);
	return rc;
}