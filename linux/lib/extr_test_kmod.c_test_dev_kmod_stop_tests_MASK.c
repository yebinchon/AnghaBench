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
struct test_config {unsigned int num_threads; } ;
struct kmod_test_device_info {scalar_t__ need_mod_put; scalar_t__ task_sync; } ;
struct kmod_test_device {int /*<<< orphan*/  thread_mutex; int /*<<< orphan*/  dev; struct kmod_test_device_info* info; struct test_config config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kmod_test_device_info*) ; 

__attribute__((used)) static void FUNC6(struct kmod_test_device *test_dev)
{
	struct test_config *config = &test_dev->config;
	struct kmod_test_device_info *info;
	unsigned int i;

	FUNC1(test_dev->dev, "Ending request_module() tests\n");

	FUNC3(&test_dev->thread_mutex);

	for (i=0; i < config->num_threads; i++) {
		info = &test_dev->info[i];
		if (info->task_sync && !FUNC0(info->task_sync)) {
			FUNC1(test_dev->dev,
				 "Stopping still-running thread %i\n", i);
			FUNC2(info->task_sync);
		}

		/*
		 * info->task_sync is well protected, it can only be
		 * NULL or a pointer to a struct. If its NULL we either
		 * never ran, or we did and we completed the work. Completed
		 * tasks *always* put the module for us. This is a sanity
		 * check -- just in case.
		 */
		if (info->task_sync && info->need_mod_put)
			FUNC5(info);
	}

	FUNC4(&test_dev->thread_mutex);
}