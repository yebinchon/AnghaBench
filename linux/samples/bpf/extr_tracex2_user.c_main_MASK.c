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
struct rlimit {int member_0; int /*<<< orphan*/  member_1; } ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 char* bpf_log_buf ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,long*,long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,long*,long*) ; 
 int /*<<< orphan*/  int_exit ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/ * map_fd ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 

int FUNC11(int ac, char **argv)
{
	struct rlimit r = {1024*1024, RLIM_INFINITY};
	char filename[256];
	long key, next_key, value;
	FILE *f;
	int i;

	FUNC10(filename, sizeof(filename), "%s_kern.o", argv[0]);

	if (FUNC7(RLIMIT_MEMLOCK, &r)) {
		FUNC3("setrlimit(RLIMIT_MEMLOCK)");
		return 1;
	}

	FUNC8(SIGINT, int_exit);
	FUNC8(SIGTERM, int_exit);

	/* start 'ping' in the background to have some kfree_skb events */
	f = FUNC4("ping -4 -c5 localhost", "r");
	(void) f;

	/* start 'dd' in the background to have plenty of 'write' syscalls */
	f = FUNC4("dd if=/dev/zero of=/dev/null count=5000000", "r");
	(void) f;

	if (FUNC2(filename)) {
		FUNC6("%s", bpf_log_buf);
		return 1;
	}

	for (i = 0; i < 5; i++) {
		key = 0;
		while (FUNC0(map_fd[0], &key, &next_key) == 0) {
			FUNC1(map_fd[0], &next_key, &value);
			FUNC6("location 0x%lx count %ld\n", next_key, value);
			key = next_key;
		}
		if (key)
			FUNC6("\n");
		FUNC9(1);
	}
	FUNC5(map_fd[1]);

	return 0;
}