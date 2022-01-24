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
struct rlimit {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int FUNC0 (char*) ; 
 char* bpf_log_buf ; 
 int /*<<< orphan*/  int_exit ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/ * map_fd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 

int FUNC9(int argc, char **argv)
{
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	char filename[256];
	int delay = 1;

	FUNC8(filename, sizeof(filename), "%s_kern.o", argv[0]);
	FUNC5(RLIMIT_MEMLOCK, &r);

	FUNC6(SIGINT, int_exit);
	FUNC6(SIGTERM, int_exit);

	if (FUNC2()) {
		FUNC4("failed to process /proc/kallsyms\n");
		return 2;
	}

	if (FUNC1(filename)) {
		FUNC4("%s", bpf_log_buf);
		return 1;
	}

	if (argc > 1)
		delay = FUNC0(argv[1]);
	FUNC7(delay);
	FUNC3(map_fd[0]);

	return 0;
}