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
 int /*<<< orphan*/  O_RDONLY ; 
 char* bpf_log_buf ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int* map_fd ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(char *filename, int num_progs)
{
	int i, fd, map0_fds[num_progs], map1_fds[num_progs];

	for (i = 0; i < num_progs; i++) {
		if (FUNC2(filename)) {
			FUNC1(stderr, "%s", bpf_log_buf);
			return 1;
		}
		FUNC4("prog #%d: map ids %d %d\n", i, map_fd[0], map_fd[1]);
		map0_fds[i] = map_fd[0];
		map1_fds[i] = map_fd[1];
	}

	/* current load_bpf_file has perf_event_open default pid = -1
	 * and cpu = 0, which permits attached bpf execution on
	 * all cpus for all pid's. bpf program execution ignores
	 * cpu affinity.
	 */
	/* trigger some "open" operations */
	fd = FUNC3(filename, O_RDONLY);
	if (fd < 0) {
		FUNC1(stderr, "open failed: %s\n", FUNC5(errno));
		return 1;
	}
	FUNC0(fd);

	/* verify the map */
	for (i = 0; i < num_progs; i++) {
		FUNC6(map0_fds[i]);
		FUNC6(map1_fds[i]);
	}

	return 0;
}