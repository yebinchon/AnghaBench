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
struct test_config {int num_threads; int test_case; char* test_driver; char* test_fs; } ;
struct kmod_test_device {int /*<<< orphan*/  config_mutex; struct test_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 char* FUNC0 (struct device*) ; 
 struct kmod_test_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,scalar_t__,char*,...) ; 
 char* FUNC5 (int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			   struct device_attribute *attr,
			   char *buf)
{
	struct kmod_test_device *test_dev = FUNC1(dev);
	struct test_config *config = &test_dev->config;
	int len = 0;

	FUNC2(&test_dev->config_mutex);

	len += FUNC4(buf, PAGE_SIZE,
			"Custom trigger configuration for: %s\n",
			FUNC0(dev));

	len += FUNC4(buf+len, PAGE_SIZE - len,
			"Number of threads:\t%u\n",
			config->num_threads);

	len += FUNC4(buf+len, PAGE_SIZE - len,
			"Test_case:\t%s (%u)\n",
			FUNC5(config->test_case),
			config->test_case);

	if (config->test_driver)
		len += FUNC4(buf+len, PAGE_SIZE - len,
				"driver:\t%s\n",
				config->test_driver);
	else
		len += FUNC4(buf+len, PAGE_SIZE - len,
				"driver:\tEMPTY\n");

	if (config->test_fs)
		len += FUNC4(buf+len, PAGE_SIZE - len,
				"fs:\t%s\n",
				config->test_fs);
	else
		len += FUNC4(buf+len, PAGE_SIZE - len,
				"fs:\tEMPTY\n");

	FUNC3(&test_dev->config_mutex);

	return len;
}