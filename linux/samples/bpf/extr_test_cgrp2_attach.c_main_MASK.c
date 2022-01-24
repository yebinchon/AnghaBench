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
typedef  enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;

/* Variables and functions */
 int BPF_CGROUP_INET_EGRESS ; 
 int BPF_CGROUP_INET_INGRESS ; 
 int EXIT_FAILURE ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int,int) ; 
 int errno ; 
 int FUNC2 (int,char**,char*) ; 
 int FUNC3 (char*,int) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (int) ; 
 int FUNC7 (char*) ; 

int FUNC8(int argc, char **argv)
{
	int detach_only = 0, verdict = 1;
	enum bpf_attach_type type;
	int opt, cg_fd, ret;

	while ((opt = FUNC2(argc, argv, "Dd")) != -1) {
		switch (opt) {
		case 'd':
			verdict = 0;
			break;
		case 'D':
			detach_only = 1;
			break;
		default:
			return FUNC7(argv[0]);
		}
	}

	if (argc - optind < 2)
		return FUNC7(argv[0]);

	if (FUNC5(argv[optind + 1], "ingress") == 0)
		type = BPF_CGROUP_INET_INGRESS;
	else if (FUNC5(argv[optind + 1], "egress") == 0)
		type = BPF_CGROUP_INET_EGRESS;
	else
		return FUNC7(argv[0]);

	cg_fd = FUNC3(argv[optind], O_DIRECTORY | O_RDONLY);
	if (cg_fd < 0) {
		FUNC4("Failed to open cgroup path: '%s'\n", FUNC6(errno));
		return EXIT_FAILURE;
	}

	if (detach_only) {
		ret = FUNC1(cg_fd, type);
		FUNC4("bpf_prog_detach() returned '%s' (%d)\n",
		       FUNC6(errno), errno);
	} else
		ret = FUNC0(cg_fd, type, verdict);

	return ret;
}