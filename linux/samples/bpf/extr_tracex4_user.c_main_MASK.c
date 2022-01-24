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
 char* bpf_log_buf ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/ * map_fd ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 

int FUNC7(int ac, char **argv)
{
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	char filename[256];
	int i;

	FUNC6(filename, sizeof(filename), "%s_kern.o", argv[0]);

	if (FUNC4(RLIMIT_MEMLOCK, &r)) {
		FUNC1("setrlimit(RLIMIT_MEMLOCK, RLIM_INFINITY)");
		return 1;
	}

	if (FUNC0(filename)) {
		FUNC3("%s", bpf_log_buf);
		return 1;
	}

	for (i = 0; ; i++) {
		FUNC2(map_fd[1]);
		FUNC5(1);
	}

	return 0;
}