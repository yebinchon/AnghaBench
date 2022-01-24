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
typedef  size_t u8 ;
struct test_batched_req {size_t idx; int /*<<< orphan*/  completion; scalar_t__ sent; int /*<<< orphan*/ * task; struct device* dev; int /*<<< orphan*/  name; int /*<<< orphan*/ * fw; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {size_t num_requests; int test_result; struct test_batched_req* reqs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC1 (int,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct test_batched_req*,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__* test_fw_config ; 
 int /*<<< orphan*/  test_fw_mutex ; 
 int /*<<< orphan*/  test_fw_run_batch_request ; 
 struct test_batched_req* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
					      struct device_attribute *attr,
					      const char *buf, size_t count)
{
	struct test_batched_req *req;
	int rc;
	u8 i;

	FUNC4(&test_fw_mutex);

	test_fw_config->reqs =
		FUNC8(FUNC1(sizeof(struct test_batched_req),
				    test_fw_config->num_requests, 2));
	if (!test_fw_config->reqs) {
		rc = -ENOMEM;
		goto out_unlock;
	}

	FUNC7("batched sync firmware loading '%s' %u times\n",
		test_fw_config->name, test_fw_config->num_requests);

	for (i = 0; i < test_fw_config->num_requests; i++) {
		req = &test_fw_config->reqs[i];
		req->fw = NULL;
		req->idx = i;
		req->name = test_fw_config->name;
		req->dev = dev;
		FUNC2(&req->completion);
		req->task = FUNC3(test_fw_run_batch_request, req,
					     "%s-%u", KBUILD_MODNAME, req->idx);
		if (!req->task || FUNC0(req->task)) {
			FUNC6("Setting up thread %u failed\n", req->idx);
			req->task = NULL;
			rc = -ENOMEM;
			goto out_bail;
		}
	}

	rc = count;

	/*
	 * We require an explicit release to enable more time and delay of
	 * calling release_firmware() to improve our chances of forcing a
	 * batched request. If we instead called release_firmware() right away
	 * then we might miss on an opportunity of having a successful firmware
	 * request pass on the opportunity to be come a batched request.
	 */

out_bail:
	for (i = 0; i < test_fw_config->num_requests; i++) {
		req = &test_fw_config->reqs[i];
		if (req->task || req->sent)
			FUNC9(&req->completion);
	}

	/* Override any worker error if we had a general setup error */
	if (rc < 0)
		test_fw_config->test_result = rc;

out_unlock:
	FUNC5(&test_fw_mutex);

	return rc;
}