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
 char* bpf_log_buf ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(int argc, char **argv)
{
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	char filename[256];

	FUNC8(filename, sizeof(filename), "%s_kern.o", argv[0]);
	FUNC6(RLIMIT_MEMLOCK, &r);

	FUNC7(SIGINT, int_exit);
	FUNC7(SIGTERM, int_exit);

	if (FUNC3()) {
		FUNC4("failed to process /proc/kallsyms\n");
		return 1;
	}

	if (FUNC2(filename)) {
		FUNC4("%s", bpf_log_buf);
		return 2;
	}

	if (FUNC0() == 0) {
		FUNC5();
		return 0;
	}
	FUNC9();
	FUNC1(0);
	return 0;
}