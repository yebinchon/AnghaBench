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
 scalar_t__ FUNC0 (char*) ; 
 char* bpf_log_buf ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(int argc, char **argv)
{
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	char filename[256];
	int num_cpu = 8;
	int test_flags = ~0;

	FUNC4(RLIMIT_MEMLOCK, &r);

	if (argc > 1)
		test_flags = FUNC0(argv[1]) ? : test_flags;
	if (argc > 2)
		num_cpu = FUNC0(argv[2]) ? : num_cpu;

	if (test_flags & 0x3) {
		FUNC2("BASE\n");
		FUNC3(num_cpu, test_flags);
	}

	if (test_flags & 0xC) {
		FUNC5(filename, sizeof(filename),
			 "%s_kprobe_kern.o", argv[0]);
		if (FUNC1(filename)) {
			FUNC2("%s", bpf_log_buf);
			return 1;
		}
		FUNC2("w/KPROBE\n");
		FUNC3(num_cpu, test_flags >> 2);
		FUNC6();
	}

	if (test_flags & 0x30) {
		FUNC5(filename, sizeof(filename),
			 "%s_tp_kern.o", argv[0]);
		if (FUNC1(filename)) {
			FUNC2("%s", bpf_log_buf);
			return 1;
		}
		FUNC2("w/TRACEPOINT\n");
		FUNC3(num_cpu, test_flags >> 4);
		FUNC6();
	}

	if (test_flags & 0xC0) {
		FUNC5(filename, sizeof(filename),
			 "%s_raw_tp_kern.o", argv[0]);
		if (FUNC1(filename)) {
			FUNC2("%s", bpf_log_buf);
			return 1;
		}
		FUNC2("w/RAW_TRACEPOINT\n");
		FUNC3(num_cpu, test_flags >> 6);
		FUNC6();
	}

	return 0;
}