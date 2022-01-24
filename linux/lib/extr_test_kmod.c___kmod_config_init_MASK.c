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
struct test_config {int /*<<< orphan*/  test_case; scalar_t__ test_result; int /*<<< orphan*/  num_threads; } ;
struct kmod_test_device {int test_is_oom; struct test_config config; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  TEST_START_DRIVER ; 
 int /*<<< orphan*/  TEST_START_TEST_CASE ; 
 int /*<<< orphan*/  TEST_START_TEST_FS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct test_config*) ; 
 int FUNC2 (struct test_config*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct test_config*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct kmod_test_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct kmod_test_device *test_dev)
{
	struct test_config *config = &test_dev->config;
	int ret = -ENOMEM, copied;

	FUNC1(config);

	copied = FUNC2(config, TEST_START_DRIVER,
					      FUNC6(TEST_START_DRIVER));
	if (copied != FUNC6(TEST_START_DRIVER))
		goto err_out;

	copied = FUNC3(config, TEST_START_TEST_FS,
				     FUNC6(TEST_START_TEST_FS));
	if (copied != FUNC6(TEST_START_TEST_FS))
		goto err_out;

	config->num_threads = FUNC5();
	config->test_result = 0;
	config->test_case = TEST_START_TEST_CASE;

	ret = FUNC4(test_dev);
	if (ret)
		goto err_out;

	test_dev->test_is_oom = false;

	return 0;

err_out:
	test_dev->test_is_oom = true;
	FUNC0(test_dev->test_is_oom);

	FUNC1(config);

	return ret;
}