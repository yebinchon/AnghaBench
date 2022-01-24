#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {char* size; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__**,char*,struct device*) ; 
 TYPE_1__* test_firmware ; 
 int /*<<< orphan*/  test_fw_mutex ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	int rc;
	char *name;

	name = FUNC1(buf, count, GFP_KERNEL);
	if (!name)
		return -ENOSPC;

	FUNC4("loading '%s'\n", name);

	FUNC2(&test_fw_mutex);
	FUNC5(test_firmware);
	test_firmware = NULL;
	rc = FUNC6(&test_firmware, name, dev);
	if (rc) {
		FUNC4("load of '%s' failed: %d\n", name, rc);
		goto out;
	}
	FUNC4("loaded: %zu\n", test_firmware->size);
	rc = count;

out:
	FUNC3(&test_fw_mutex);

	FUNC0(name);

	return rc;
}