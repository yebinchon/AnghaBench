#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {char* size; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FW_ACTION_NOHOTPLUG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  async_fw_done ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* test_firmware ; 
 int /*<<< orphan*/  test_fw_mutex ; 
 int /*<<< orphan*/  trigger_async_request_cb ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
					     struct device_attribute *attr,
					     const char *buf, size_t count)
{
	int rc;
	char *name;

	name = FUNC1(buf, count, GFP_KERNEL);
	if (!name)
		return -ENOSPC;

	FUNC5("loading '%s' using custom fallback mechanism\n", name);

	FUNC2(&test_fw_mutex);
	FUNC6(test_firmware);
	test_firmware = NULL;
	rc = FUNC7(THIS_MODULE, FW_ACTION_NOHOTPLUG, name,
				     dev, GFP_KERNEL, NULL,
				     trigger_async_request_cb);
	if (rc) {
		FUNC5("async load of '%s' failed: %d\n", name, rc);
		FUNC0(name);
		goto out;
	}
	/* Free 'name' ASAP, to test for race conditions */
	FUNC0(name);

	FUNC8(&async_fw_done);

	if (test_firmware) {
		FUNC5("loaded: %zu\n", test_firmware->size);
		rc = count;
	} else {
		FUNC4("failed to async load firmware\n");
		rc = -ENODEV;
	}

out:
	FUNC3(&test_fw_mutex);

	return rc;
}