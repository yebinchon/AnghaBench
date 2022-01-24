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
struct device {int /*<<< orphan*/  devnode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PMSG_NAME ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct device* FUNC4 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* pmsg_class ; 
 int /*<<< orphan*/  pmsg_devnode ; 
 int /*<<< orphan*/  pmsg_fops ; 
 scalar_t__ pmsg_major ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	struct device *pmsg_device;

	pmsg_major = FUNC6(0, PMSG_NAME, &pmsg_fops);
	if (pmsg_major < 0) {
		FUNC5("register_chrdev failed\n");
		goto err;
	}

	pmsg_class = FUNC2(THIS_MODULE, PMSG_NAME);
	if (FUNC0(pmsg_class)) {
		FUNC5("device class file already in use\n");
		goto err_class;
	}
	pmsg_class->devnode = pmsg_devnode;

	pmsg_device = FUNC4(pmsg_class, NULL, FUNC1(pmsg_major, 0),
					NULL, "%s%d", PMSG_NAME, 0);
	if (FUNC0(pmsg_device)) {
		FUNC5("failed to create device\n");
		goto err_device;
	}
	return;

err_device:
	FUNC3(pmsg_class);
err_class:
	FUNC7(pmsg_major, PMSG_NAME);
err:
	return;
}