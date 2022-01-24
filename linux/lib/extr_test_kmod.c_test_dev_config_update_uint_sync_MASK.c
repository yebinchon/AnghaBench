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
struct kmod_test_device {int /*<<< orphan*/  config_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct kmod_test_device *test_dev,
					    const char *buf, size_t size,
					    unsigned int *config,
					    int (*test_sync)(struct kmod_test_device *test_dev))
{
	int ret;
	unsigned long new;
	unsigned int old_val;

	ret = FUNC1(buf, 10, &new);
	if (ret)
		return ret;

	if (new > UINT_MAX)
		return -EINVAL;

	FUNC2(&test_dev->config_mutex);

	old_val = *config;
	*(unsigned int *)config = new;

	ret = test_sync(test_dev);
	if (ret) {
		*(unsigned int *)config = old_val;

		ret = test_sync(test_dev);
		FUNC0(ret);

		FUNC3(&test_dev->config_mutex);
		return -EINVAL;
	}

	FUNC3(&test_dev->config_mutex);
	/* Always return full write size even if we didn't consume all */
	return size;
}