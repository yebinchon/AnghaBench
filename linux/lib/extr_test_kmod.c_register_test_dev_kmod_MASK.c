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
struct TYPE_2__ {int /*<<< orphan*/  this_device; } ;
struct kmod_test_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  list; TYPE_1__ misc_dev; } ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 struct kmod_test_device* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct kmod_test_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ num_test_devs ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  reg_dev_mutex ; 
 int /*<<< orphan*/  reg_test_devs ; 

__attribute__((used)) static struct kmod_test_device *FUNC8(void)
{
	struct kmod_test_device *test_dev = NULL;
	int ret;

	FUNC5(&reg_dev_mutex);

	/* int should suffice for number of devices, test for wrap */
	if (num_test_devs + 1 == INT_MAX) {
		FUNC7("reached limit of number of test devices\n");
		goto out;
	}

	test_dev = FUNC0(num_test_devs);
	if (!test_dev)
		goto out;

	ret = FUNC4(&test_dev->misc_dev);
	if (ret) {
		FUNC7("could not register misc device: %d\n", ret);
		FUNC2(test_dev);
		goto out;
	}

	test_dev->dev = test_dev->misc_dev.this_device;
	FUNC3(&test_dev->list, &reg_test_devs);
	FUNC1(test_dev->dev, "interface ready\n");

	num_test_devs++;

out:
	FUNC6(&reg_dev_mutex);

	return test_dev;

}