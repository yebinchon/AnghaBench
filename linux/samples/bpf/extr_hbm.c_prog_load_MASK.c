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
struct bpf_prog_load_attr {char* file; int /*<<< orphan*/  expected_attach_type; int /*<<< orphan*/  prog_type; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_CGROUP_INET_EGRESS ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_CGROUP_SKB ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* bpf_log_buf ; 
 int FUNC1 (struct bpf_map*) ; 
 struct bpf_map* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct bpf_prog_load_attr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bpfprog_fd ; 
 int errno ; 
 int /*<<< orphan*/  obj ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 char* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(char *prog)
{
	struct bpf_prog_load_attr prog_load_attr = {
		.prog_type = BPF_PROG_TYPE_CGROUP_SKB,
		.file = prog,
		.expected_attach_type = BPF_CGROUP_INET_EGRESS,
	};
	int map_fd;
	struct bpf_map *map;

	int ret = 0;

	if (FUNC0(prog, O_RDONLY) < 0) {
		FUNC4("Error accessing file %s: %s\n", prog, FUNC5(errno));
		return 1;
	}
	if (FUNC3(&prog_load_attr, &obj, &bpfprog_fd))
		ret = 1;
	if (!ret) {
		map = FUNC2(obj, "queue_stats");
		map_fd = FUNC1(map);
		if (map_fd < 0) {
			FUNC4("Map not found: %s\n", FUNC5(map_fd));
			ret = 1;
		}
	}

	if (ret) {
		FUNC4("ERROR: load_bpf_file failed for: %s\n", prog);
		FUNC4("  Output from verifier:\n%s\n------\n", bpf_log_buf);
		ret = -1;
	} else {
		ret = map_fd;
	}

	return ret;
}