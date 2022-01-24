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
 int /*<<< orphan*/  BPF_CGROUP_INET_SOCK_CREATE ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int FUNC0 (char*) ; 
 char* bpf_log_buf ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int prog_cnt ; 
 int /*<<< orphan*/ * prog_fd ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 

int FUNC7(int argc, char **argv)
{
	int cg_fd, ret, filter_id = 0;

	if (argc < 3)
		return FUNC6(argv[0]);

	cg_fd = FUNC3(argv[1], O_DIRECTORY | O_RDONLY);
	if (cg_fd < 0) {
		FUNC4("Failed to open cgroup path: '%s'\n", FUNC5(errno));
		return EXIT_FAILURE;
	}

	if (FUNC2(argv[2]))
		return EXIT_FAILURE;

	FUNC4("Output from kernel verifier:\n%s\n-------\n", bpf_log_buf);

	if (argc > 3)
		filter_id = FUNC0(argv[3]);

	if (filter_id >= prog_cnt) {
		FUNC4("Invalid program id; program not found in file\n");
		return EXIT_FAILURE;
	}

	ret = FUNC1(prog_fd[filter_id], cg_fd,
			      BPF_CGROUP_INET_SOCK_CREATE, 0);
	if (ret < 0) {
		FUNC4("Failed to attach prog to cgroup: '%s'\n",
		       FUNC5(errno));
		return EXIT_FAILURE;
	}

	return EXIT_SUCCESS;
}