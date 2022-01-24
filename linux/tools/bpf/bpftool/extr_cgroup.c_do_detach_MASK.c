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
 int /*<<< orphan*/  O_RDONLY ; 
 int __MAX_BPF_ATTACH_TYPE ; 
 scalar_t__ FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (int*,char***) ; 

__attribute__((used)) static int FUNC7(int argc, char **argv)
{
	enum bpf_attach_type attach_type;
	int prog_fd, cgroup_fd;
	int ret = -1;

	if (argc < 4) {
		FUNC4("too few parameters for cgroup detach");
		goto exit;
	}

	cgroup_fd = FUNC3(argv[0], O_RDONLY);
	if (cgroup_fd < 0) {
		FUNC4("can't open cgroup %s", argv[0]);
		goto exit;
	}

	attach_type = FUNC5(argv[1]);
	if (attach_type == __MAX_BPF_ATTACH_TYPE) {
		FUNC4("invalid attach type");
		goto exit_cgroup;
	}

	argc -= 2;
	argv = &argv[2];
	prog_fd = FUNC6(&argc, &argv);
	if (prog_fd < 0)
		goto exit_cgroup;

	if (FUNC0(prog_fd, cgroup_fd, attach_type)) {
		FUNC4("failed to detach program");
		goto exit_prog;
	}

	if (json_output)
		FUNC2(json_wtr);

	ret = 0;

exit_prog:
	FUNC1(prog_fd);
exit_cgroup:
	FUNC1(cgroup_fd);
exit:
	return ret;
}