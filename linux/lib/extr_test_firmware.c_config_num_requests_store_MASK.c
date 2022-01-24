#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  num_requests; scalar_t__ reqs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char const*,size_t,int /*<<< orphan*/ *) ; 
 TYPE_1__* test_fw_config ; 
 int /*<<< orphan*/  test_fw_mutex ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					 struct device_attribute *attr,
					 const char *buf, size_t count)
{
	int rc;

	FUNC0(&test_fw_mutex);
	if (test_fw_config->reqs) {
		FUNC2("Must call release_all_firmware prior to changing config\n");
		rc = -EINVAL;
		FUNC1(&test_fw_mutex);
		goto out;
	}
	FUNC1(&test_fw_mutex);

	rc = FUNC3(buf, count,
				       &test_fw_config->num_requests);

out:
	return rc;
}