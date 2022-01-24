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
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_CGROUP_INET_SOCK_CREATE ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int PF_INET ; 
 int PF_INET6 ; 
 char* bpf_log_buf ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (char*) ; 

int FUNC13(int argc, char **argv)
{
	__u32 idx = 0, mark = 0, prio = 0;
	const char *cgrp_path = NULL;
	int cg_fd, prog_fd, ret;
	int family = PF_INET;
	int do_attach = 1;
	int rc;

	while ((rc = FUNC4(argc, argv, "db:m:p:6")) != -1) {
		switch (rc) {
		case 'd':
			do_attach = 0;
			break;
		case 'b':
			idx = FUNC5(optarg);
			if (!idx) {
				idx = FUNC11(optarg, NULL, 0);
				if (!idx) {
					FUNC7("Invalid device name\n");
					return EXIT_FAILURE;
				}
			}
			break;
		case 'm':
			mark = FUNC11(optarg, NULL, 0);
			break;
		case 'p':
			prio = FUNC11(optarg, NULL, 0);
			break;
		case '6':
			family = PF_INET6;
			break;
		default:
			return FUNC12(argv[0]);
		}
	}

	if (optind == argc)
		return FUNC9(family);

	cgrp_path = argv[optind];
	if (!cgrp_path) {
		FUNC3(stderr, "cgroup path not given\n");
		return EXIT_FAILURE;
	}

	if (do_attach && !idx && !mark && !prio) {
		FUNC3(stderr,
			"One of device, mark or priority must be given\n");
		return EXIT_FAILURE;
	}

	cg_fd = FUNC6(cgrp_path, O_DIRECTORY | O_RDONLY);
	if (cg_fd < 0) {
		FUNC7("Failed to open cgroup path: '%s'\n", FUNC10(errno));
		return EXIT_FAILURE;
	}

	if (do_attach) {
		prog_fd = FUNC8(idx, mark, prio);
		if (prog_fd < 0) {
			FUNC7("Failed to load prog: '%s'\n", FUNC10(errno));
			FUNC7("Output from kernel verifier:\n%s\n-------\n",
			       bpf_log_buf);
			return EXIT_FAILURE;
		}

		ret = FUNC0(prog_fd, cg_fd,
				      BPF_CGROUP_INET_SOCK_CREATE, 0);
		if (ret < 0) {
			FUNC7("Failed to attach prog to cgroup: '%s'\n",
			       FUNC10(errno));
			return EXIT_FAILURE;
		}
	} else {
		ret = FUNC1(cg_fd, BPF_CGROUP_INET_SOCK_CREATE);
		if (ret < 0) {
			FUNC7("Failed to detach prog from cgroup: '%s'\n",
			       FUNC10(errno));
			return EXIT_FAILURE;
		}
	}

	FUNC2(cg_fd);
	return EXIT_SUCCESS;
}