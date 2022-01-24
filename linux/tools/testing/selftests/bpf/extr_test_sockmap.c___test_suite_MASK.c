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

/* Variables and functions */
 int /*<<< orphan*/  CG_PATH ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int failed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int passed ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 scalar_t__ txmsg_end ; 
 scalar_t__ txmsg_end_push ; 
 scalar_t__ txmsg_start ; 
 scalar_t__ txmsg_start_push ; 

__attribute__((used)) static int FUNC11(int cg_fd, char *bpf_file)
{
	int err, cleanup = cg_fd;

	err = FUNC5(bpf_file);
	if (err < 0) {
		FUNC3(stderr, "ERROR: (%i) load bpf failed\n", err);
		return err;
	}

	if (cg_fd < 0) {
		if (FUNC7()) {
			FUNC3(stderr, "ERROR: cgroup env failed\n");
			return -EINVAL;
		}

		cg_fd = FUNC2(CG_PATH);
		if (cg_fd < 0) {
			FUNC3(stderr,
				"ERROR: (%i) open cg path failed: %s\n",
				cg_fd, optarg);
			return cg_fd;
		}

		if (FUNC4(CG_PATH)) {
			FUNC3(stderr, "ERROR: failed to join cgroup\n");
			return -EINVAL;
		}
	}

	/* Tests basic commands and APIs with range of iov values */
	txmsg_start = txmsg_end = txmsg_start_push = txmsg_end_push = 0;
	err = FUNC10(cg_fd);
	if (err)
		goto out;

	/* Tests interesting combinations of APIs used together */
	err = FUNC8(cg_fd);
	if (err)
		goto out;

	/* Tests pull_data API using start/end API */
	err = FUNC9(cg_fd);
	if (err)
		goto out;

out:
	FUNC6("Summary: %i PASSED %i FAILED\n", passed, failed);
	if (cleanup < 0) {
		FUNC0();
		FUNC1(cg_fd);
	}
	return err;
}