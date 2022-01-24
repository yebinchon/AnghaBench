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
struct bpf_object {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_CGROUP_DEVICE ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_CGROUP_DEVICE ; 
 int /*<<< orphan*/  DEV_CGROUP_PROG ; 
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  TEST_CGROUP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bpf_object**,int*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (char*) ; 

int FUNC10(int argc, char **argv)
{
	struct bpf_object *obj;
	int error = EXIT_FAILURE;
	int prog_fd, cgroup_fd;
	__u32 prog_cnt;

	if (FUNC2(DEV_CGROUP_PROG, BPF_PROG_TYPE_CGROUP_DEVICE,
			  &obj, &prog_fd)) {
		FUNC7("Failed to load DEV_CGROUP program\n");
		goto out;
	}

	if (FUNC8()) {
		FUNC7("Failed to load DEV_CGROUP program\n");
		goto err;
	}

	/* Create a cgroup, get fd, and join it */
	cgroup_fd = FUNC5(TEST_CGROUP);
	if (cgroup_fd < 0) {
		FUNC7("Failed to create test cgroup\n");
		goto err;
	}

	if (FUNC6(TEST_CGROUP)) {
		FUNC7("Failed to join cgroup\n");
		goto err;
	}

	/* Attach bpf program */
	if (FUNC1(prog_fd, cgroup_fd, BPF_CGROUP_DEVICE, 0)) {
		FUNC7("Failed to attach DEV_CGROUP program");
		goto err;
	}

	if (FUNC3(cgroup_fd, BPF_CGROUP_DEVICE, 0, NULL, NULL,
			   &prog_cnt)) {
		FUNC7("Failed to query attached programs");
		goto err;
	}

	/* All operations with /dev/zero and and /dev/urandom are allowed,
	 * everything else is forbidden.
	 */
	FUNC0(FUNC9("rm -f /tmp/test_dev_cgroup_null") == 0);
	FUNC0(FUNC9("mknod /tmp/test_dev_cgroup_null c 1 3"));
	FUNC0(FUNC9("rm -f /tmp/test_dev_cgroup_null") == 0);

	/* /dev/zero is whitelisted */
	FUNC0(FUNC9("rm -f /tmp/test_dev_cgroup_zero") == 0);
	FUNC0(FUNC9("mknod /tmp/test_dev_cgroup_zero c 1 5") == 0);
	FUNC0(FUNC9("rm -f /tmp/test_dev_cgroup_zero") == 0);

	FUNC0(FUNC9("dd if=/dev/urandom of=/dev/zero count=64") == 0);

	/* src is allowed, target is forbidden */
	FUNC0(FUNC9("dd if=/dev/urandom of=/dev/full count=64"));

	/* src is forbidden, target is allowed */
	FUNC0(FUNC9("dd if=/dev/random of=/dev/zero count=64"));

	error = 0;
	FUNC7("test_dev_cgroup:PASS\n");

err:
	FUNC4();

out:
	return error;
}