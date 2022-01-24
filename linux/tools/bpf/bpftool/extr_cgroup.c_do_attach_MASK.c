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
 int BPF_F_ALLOW_MULTI ; 
 int BPF_F_ALLOW_OVERRIDE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int __MAX_BPF_ATTACH_TYPE ; 
 scalar_t__ FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (int*,char***) ; 

__attribute__((used)) static int FUNC8(int argc, char **argv)
{
	enum bpf_attach_type attach_type;
	int cgroup_fd, prog_fd;
	int attach_flags = 0;
	int ret = -1;
	int i;

	if (argc < 4) {
		FUNC5("too few parameters for cgroup attach");
		goto exit;
	}

	cgroup_fd = FUNC4(argv[0], O_RDONLY);
	if (cgroup_fd < 0) {
		FUNC5("can't open cgroup %s", argv[0]);
		goto exit;
	}

	attach_type = FUNC6(argv[1]);
	if (attach_type == __MAX_BPF_ATTACH_TYPE) {
		FUNC5("invalid attach type");
		goto exit_cgroup;
	}

	argc -= 2;
	argv = &argv[2];
	prog_fd = FUNC7(&argc, &argv);
	if (prog_fd < 0)
		goto exit_cgroup;

	for (i = 0; i < argc; i++) {
		if (FUNC2(argv[i], "multi")) {
			attach_flags |= BPF_F_ALLOW_MULTI;
		} else if (FUNC2(argv[i], "override")) {
			attach_flags |= BPF_F_ALLOW_OVERRIDE;
		} else {
			FUNC5("unknown option: %s", argv[i]);
			goto exit_cgroup;
		}
	}

	if (FUNC0(prog_fd, cgroup_fd, attach_type, attach_flags)) {
		FUNC5("failed to attach program");
		goto exit_prog;
	}

	if (json_output)
		FUNC3(json_wtr);

	ret = 0;

exit_prog:
	FUNC1(prog_fd);
exit_cgroup:
	FUNC1(cgroup_fd);
exit:
	return ret;
}