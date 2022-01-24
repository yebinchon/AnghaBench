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
 void* FUNC0 (char*) ; 
 char* bpf_log_buf ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  fixup_map ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 void* max_cnt ; 
 void* num_map_entries ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  test_flags ; 

int FUNC7(int argc, char **argv)
{
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	char filename[256];
	int num_cpu = 8;

	FUNC6(filename, sizeof(filename), "%s_kern.o", argv[0]);
	FUNC5(RLIMIT_MEMLOCK, &r);

	if (argc > 1)
		test_flags = FUNC0(argv[1]) ? : test_flags;

	if (argc > 2)
		num_cpu = FUNC0(argv[2]) ? : num_cpu;

	if (argc > 3)
		num_map_entries = FUNC0(argv[3]);

	if (argc > 4)
		max_cnt = FUNC0(argv[4]);

	if (FUNC2(filename, fixup_map)) {
		FUNC3("%s", bpf_log_buf);
		return 1;
	}

	FUNC1();

	FUNC4(num_cpu);

	return 0;
}