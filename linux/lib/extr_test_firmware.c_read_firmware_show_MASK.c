#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct test_batched_req {TYPE_1__* fw; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {size_t read_fw_idx; size_t num_requests; struct test_batched_req* reqs; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int /*<<< orphan*/ ) ; 
 TYPE_2__* test_fw_config ; 
 int /*<<< orphan*/  test_fw_mutex ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				  struct device_attribute *attr,
				  char *buf)
{
	struct test_batched_req *req;
	u8 idx;
	ssize_t rc = 0;

	FUNC1(&test_fw_mutex);

	idx = test_fw_config->read_fw_idx;
	if (idx >= test_fw_config->num_requests) {
		rc = -ERANGE;
		goto out;
	}

	if (!test_fw_config->reqs) {
		rc = -EINVAL;
		goto out;
	}

	req = &test_fw_config->reqs[idx];
	if (!req->fw) {
		FUNC3("#%u: failed to async load firmware\n", idx);
		rc = -ENOENT;
		goto out;
	}

	FUNC4("#%u: loaded %zu\n", idx, req->fw->size);

	if (req->fw->size > PAGE_SIZE) {
		FUNC3("Testing interface must use PAGE_SIZE firmware for now\n");
		rc = -EINVAL;
		goto out;
	}
	FUNC0(buf, req->fw->data, req->fw->size);

	rc = req->fw->size;
out:
	FUNC2(&test_fw_mutex);

	return rc;
}