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
struct test_config {int /*<<< orphan*/ * test_driver; } ;
struct kmod_test_device {int /*<<< orphan*/  config_mutex; struct test_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct test_config*,char const*,size_t) ; 
 struct kmod_test_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	struct kmod_test_device *test_dev = FUNC1(dev);
	struct test_config *config = &test_dev->config;
	int copied;

	FUNC3(&test_dev->config_mutex);

	FUNC2(config->test_driver);
	config->test_driver = NULL;

	copied = FUNC0(config, buf, count);
	FUNC4(&test_dev->config_mutex);

	return copied;
}