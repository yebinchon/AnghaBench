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
struct kmod_test_device_info {unsigned int thread_idx; int ret_sync; int /*<<< orphan*/ * task_sync; struct kmod_test_device* test_dev; } ;
struct kmod_test_device {int test_is_oom; int /*<<< orphan*/  thread_mutex; int /*<<< orphan*/  dev; struct kmod_test_device_info* info; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct kmod_test_device_info*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  run_request ; 

__attribute__((used)) static int FUNC6(struct kmod_test_device *test_dev, unsigned int idx)
{
	struct kmod_test_device_info *info = &test_dev->info[idx];
	int fail_ret = -ENOMEM;

	FUNC4(&test_dev->thread_mutex);

	info->thread_idx = idx;
	info->test_dev = test_dev;
	info->task_sync = FUNC3(run_request, info, "%s-%u",
				      KBUILD_MODNAME, idx);

	if (!info->task_sync || FUNC0(info->task_sync)) {
		test_dev->test_is_oom = true;
		FUNC2(test_dev->dev, "Setting up thread %u failed\n", idx);
		info->task_sync = NULL;
		goto err_out;
	} else
		FUNC1(test_dev->dev, "Kicked off thread %u\n", idx);

	FUNC5(&test_dev->thread_mutex);

	return 0;

err_out:
	info->ret_sync = fail_ret;
	FUNC5(&test_dev->thread_mutex);

	return fail_ret;
}