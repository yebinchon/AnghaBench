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
struct test_config {unsigned int num_threads; int test_result; } ;
struct kmod_test_device_info {int dummy; } ;
struct kmod_test_device {int /*<<< orphan*/  thread_mutex; struct kmod_test_device_info* info; int /*<<< orphan*/  dev; struct test_config config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct kmod_test_device_info*) ; 

__attribute__((used)) static void FUNC4(struct kmod_test_device *test_dev)
{
	struct test_config *config = &test_dev->config;
	struct kmod_test_device_info *info;
	unsigned int idx;
	int err_ret = 0;
	int ret = 0;

	FUNC1(&test_dev->thread_mutex);

	FUNC0(test_dev->dev, "Results:\n");

	for (idx=0; idx < config->num_threads; idx++) {
		info = &test_dev->info[idx];
		ret = FUNC3(info);
		if (ret)
			err_ret = ret;
	}

	/*
	 * Note: request_module() returns 256 for a module not found even
	 * though modprobe itself returns 1.
	 */
	config->test_result = err_ret;

	FUNC2(&test_dev->thread_mutex);
}