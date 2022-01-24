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
struct kmod_test_device {int /*<<< orphan*/  trigger_mutex; int /*<<< orphan*/  config_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct kmod_test_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct kmod_test_device* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			   struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct kmod_test_device *test_dev = FUNC3(dev);
	int ret;

	FUNC4(&test_dev->trigger_mutex);
	FUNC4(&test_dev->config_mutex);

	ret = FUNC0(test_dev);
	if (ret < 0) {
		ret = -ENOMEM;
		FUNC1(dev, "could not alloc settings for config trigger: %d\n",
		       ret);
		goto out;
	}

	FUNC2(dev, "reset\n");
	ret = count;

out:
	FUNC5(&test_dev->config_mutex);
	FUNC5(&test_dev->trigger_mutex);

	return ret;
}