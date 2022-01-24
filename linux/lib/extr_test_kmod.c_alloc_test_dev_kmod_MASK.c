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
struct miscdevice {int /*<<< orphan*/  groups; int /*<<< orphan*/  name; int /*<<< orphan*/  minor; } ;
struct kmod_test_device {int dev_idx; struct miscdevice misc_dev; int /*<<< orphan*/  kthreads_done; int /*<<< orphan*/  thread_mutex; int /*<<< orphan*/  trigger_mutex; int /*<<< orphan*/  config_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MISC_DYNAMIC_MINOR ; 
 int /*<<< orphan*/  FUNC0 (struct kmod_test_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kmod_test_device*) ; 
 int FUNC4 (struct kmod_test_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  test_dev_groups ; 
 int /*<<< orphan*/  FUNC7 (struct kmod_test_device*) ; 
 struct kmod_test_device* FUNC8 (int) ; 

__attribute__((used)) static struct kmod_test_device *FUNC9(int idx)
{
	int ret;
	struct kmod_test_device *test_dev;
	struct miscdevice *misc_dev;

	test_dev = FUNC8(sizeof(struct kmod_test_device));
	if (!test_dev)
		goto err_out;

	FUNC5(&test_dev->config_mutex);
	FUNC5(&test_dev->trigger_mutex);
	FUNC5(&test_dev->thread_mutex);

	FUNC1(&test_dev->kthreads_done);

	ret = FUNC4(test_dev);
	if (ret < 0) {
		FUNC6("Cannot alloc kmod_config_init()\n");
		goto err_out_free;
	}

	test_dev->dev_idx = idx;
	misc_dev = &test_dev->misc_dev;

	misc_dev->minor = MISC_DYNAMIC_MINOR;
	misc_dev->name = FUNC2(GFP_KERNEL, "test_kmod%d", idx);
	if (!misc_dev->name) {
		FUNC6("Cannot alloc misc_dev->name\n");
		goto err_out_free_config;
	}
	misc_dev->groups = test_dev_groups;

	return test_dev;

err_out_free_config:
	FUNC0(test_dev);
	FUNC3(test_dev);
err_out_free:
	FUNC7(test_dev);
	test_dev = NULL;
err_out:
	return NULL;
}