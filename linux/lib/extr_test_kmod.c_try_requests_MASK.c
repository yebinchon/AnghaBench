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
struct kmod_test_device {int test_is_oom; int /*<<< orphan*/  dev; int /*<<< orphan*/  kthreads_done; struct test_config config; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct kmod_test_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct kmod_test_device*) ; 
 int FUNC3 (struct kmod_test_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct kmod_test_device *test_dev)
{
	struct test_config *config = &test_dev->config;
	unsigned int idx;
	int ret;
	bool any_error = false;

	for (idx=0; idx < config->num_threads; idx++) {
		if (test_dev->test_is_oom) {
			any_error = true;
			break;
		}

		ret = FUNC3(test_dev, idx);
		if (ret) {
			any_error = true;
			break;
		}
	}

	if (!any_error) {
		test_dev->test_is_oom = false;
		FUNC0(test_dev->dev,
			 "No errors were found while initializing threads\n");
		FUNC4(&test_dev->kthreads_done);
		FUNC1(test_dev);
	} else {
		test_dev->test_is_oom = true;
		FUNC0(test_dev->dev,
			 "At least one thread failed to start, stop all work\n");
		FUNC2(test_dev);
		return -ENOMEM;
	}

	return 0;
}