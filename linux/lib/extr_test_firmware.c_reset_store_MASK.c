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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  test_fw_mutex ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			   struct device_attribute *attr,
			   const char *buf, size_t count)
{
	int ret;

	FUNC2(&test_fw_mutex);

	FUNC0();

	ret = FUNC1();
	if (ret < 0) {
		ret = -ENOMEM;
		FUNC4("could not alloc settings for config trigger: %d\n",
		       ret);
		goto out;
	}

	FUNC5("reset\n");
	ret = count;

out:
	FUNC3(&test_fw_mutex);

	return ret;
}