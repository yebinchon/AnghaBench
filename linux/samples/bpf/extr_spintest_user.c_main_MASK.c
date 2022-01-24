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
struct ksym {char* name; } ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* bpf_log_buf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,long*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,long*,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,long*,long*) ; 
 struct ksym* FUNC4 (long) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/ * map_fd ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 

int FUNC11(int ac, char **argv)
{
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	long key, next_key, value;
	char filename[256];
	struct ksym *sym;
	int i;

	FUNC10(filename, sizeof(filename), "%s_kern.o", argv[0]);
	FUNC8(RLIMIT_MEMLOCK, &r);

	if (FUNC6()) {
		FUNC7("failed to process /proc/kallsyms\n");
		return 2;
	}

	if (FUNC5(filename)) {
		FUNC7("%s", bpf_log_buf);
		return 1;
	}

	for (i = 0; i < 5; i++) {
		key = 0;
		FUNC7("kprobing funcs:");
		while (FUNC2(map_fd[0], &key, &next_key) == 0) {
			FUNC3(map_fd[0], &next_key, &value);
			FUNC0(next_key == value);
			sym = FUNC4(value);
			key = next_key;
			if (!sym) {
				FUNC7("ksym not found. Is kallsyms loaded?\n");
				continue;
			}

			FUNC7(" %s", sym->name);
		}
		if (key)
			FUNC7("\n");
		key = 0;
		while (FUNC2(map_fd[0], &key, &next_key) == 0)
			FUNC1(map_fd[0], &next_key);
		FUNC9(1);
	}

	return 0;
}