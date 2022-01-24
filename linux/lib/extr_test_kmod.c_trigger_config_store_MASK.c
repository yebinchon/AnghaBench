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
struct kmod_test_device {scalar_t__ test_is_oom; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 struct kmod_test_device* FUNC1 (struct device*) ; 
 int FUNC2 (struct kmod_test_device*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev,
		     struct device_attribute *attr,
		     const char *buf, size_t count)
{
	struct kmod_test_device *test_dev = FUNC1(dev);
	int ret;

	if (test_dev->test_is_oom)
		return -ENOMEM;

	/* For all intents and purposes we don't care what userspace
	 * sent this trigger, we care only that we were triggered.
	 * We treat the return value only for caputuring issues with
	 * the test setup. At this point all the test variables should
	 * have been allocated so typically this should never fail.
	 */
	ret = FUNC2(test_dev);
	if (FUNC3(ret < 0))
		goto out;

	/*
	 * Note: any return > 0 will be treated as success
	 * and the error value will not be available to userspace.
	 * Do not rely on trying to send to userspace a test value
	 * return value as possitive return errors will be lost.
	 */
	if (FUNC0(ret > 0))
		return -EINVAL;

	ret = count;
out:
	return ret;
}