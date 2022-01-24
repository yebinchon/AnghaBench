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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ANY ; 
 char* CGROUP_PATH ; 
 char* bpf_log_buf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/ * map_fd ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 () ; 

int FUNC14(int argc, char **argv)
{
	pid_t remote_pid, local_pid = FUNC6();
	int cg2, idx = 0, rc = 0;
	char filename[256];

	FUNC12(filename, sizeof(filename), "%s_kern.o", argv[0]);
	if (FUNC8(filename)) {
		FUNC10("%s", bpf_log_buf);
		return 1;
	}

	if (FUNC11())
		goto err;

	cg2 = FUNC4(CGROUP_PATH);

	if (cg2 < 0)
		goto err;

	if (FUNC1(map_fd[0], &idx, &cg2, BPF_ANY)) {
		FUNC9("Adding target cgroup to map");
		goto err;
	}

	if (FUNC7(CGROUP_PATH))
		goto err;

	/*
	 * The installed helper program catched the sync call, and should
	 * write it to the map.
	 */

	FUNC13();
	FUNC0(map_fd[1], &idx, &remote_pid);

	if (local_pid != remote_pid) {
		FUNC5(stderr,
			"BPF Helper didn't write correct PID to map, but: %ld\n",
			remote_pid);
		goto err;
	}

	/* Verify the negative scenario; leave the cgroup */
	if (FUNC7("/"))
		goto err;

	remote_pid = 0;
	FUNC1(map_fd[1], &idx, &remote_pid, BPF_ANY);

	FUNC13();
	FUNC0(map_fd[1], &idx, &remote_pid);

	if (local_pid == remote_pid) {
		FUNC5(stderr, "BPF cgroup negative test did not work\n");
		goto err;
	}

	goto out;
err:
	rc = 1;

out:
	FUNC3(cg2);
	FUNC2();
	return rc;
}