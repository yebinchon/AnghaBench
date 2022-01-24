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
struct test_config {int test_case; } ;
struct kmod_test_device {int /*<<< orphan*/  dev; scalar_t__ done; struct test_config config; } ;

/* Variables and functions */
 int EINVAL ; 
#define  TEST_KMOD_DRIVER 129 
#define  TEST_KMOD_FS_TYPE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct kmod_test_device*) ; 
 int FUNC2 (struct kmod_test_device*) ; 

__attribute__((used)) static int FUNC3(struct kmod_test_device *test_dev)
{
	struct test_config *config = &test_dev->config;

	test_dev->done = 0;

	switch (config->test_case) {
	case TEST_KMOD_DRIVER:
		return FUNC1(test_dev);
	case TEST_KMOD_FS_TYPE:
		return FUNC2(test_dev);
	default:
		FUNC0(test_dev->dev,
			 "Invalid test case requested: %u\n",
			 config->test_case);
		return -EINVAL;
	}
}