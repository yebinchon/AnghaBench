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
typedef  int /*<<< orphan*/  buf ;
typedef  int __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_FD_TYPE_KPROBE ; 
 int /*<<< orphan*/  BPF_FD_TYPE_KRETPROBE ; 
 int /*<<< orphan*/  BPF_FD_TYPE_UPROBE ; 
 int /*<<< orphan*/  BPF_FD_TYPE_URETPROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 char* bpf_log_buf ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

int FUNC11(int argc, char **argv)
{
	struct rlimit r = {1024*1024, RLIM_INFINITY};
	extern char __executable_start;
	char filename[256], buf[256];
	__u64 uprobe_file_offset;

	FUNC7(filename, sizeof(filename), "%s_kern.o", argv[0]);
	if (FUNC6(RLIMIT_MEMLOCK, &r)) {
		FUNC4("setrlimit(RLIMIT_MEMLOCK)");
		return 1;
	}

	if (FUNC3()) {
		FUNC5("failed to process /proc/kallsyms\n");
		return 1;
	}

	if (FUNC2(filename)) {
		FUNC5("%s", bpf_log_buf);
		return 1;
	}

	/* test two functions in the corresponding *_kern.c file */
	FUNC0(FUNC8(0, "blk_mq_start_request",
					   BPF_FD_TYPE_KPROBE));
	FUNC0(FUNC8(1, "blk_account_io_completion",
					   BPF_FD_TYPE_KRETPROBE));

	/* test nondebug fs kprobe */
	FUNC0(FUNC10("kprobe", "bpf_check", 0x0, 0x0,
					     false, BPF_FD_TYPE_KPROBE,
					     BPF_FD_TYPE_KRETPROBE,
					     buf, sizeof(buf)));
#ifdef __x86_64__
	/* set a kprobe on "bpf_check + 0x5", which is x64 specific */
	FUNC0(FUNC10("kprobe", "bpf_check", 0x5, 0x0,
					     false, BPF_FD_TYPE_KPROBE,
					     BPF_FD_TYPE_KRETPROBE,
					     buf, sizeof(buf)));
#endif
	FUNC0(FUNC10("kprobe", "bpf_check", 0x0, 0x0,
					     true, BPF_FD_TYPE_KPROBE,
					     BPF_FD_TYPE_KRETPROBE,
					     buf, sizeof(buf)));
	FUNC0(FUNC10("kprobe", NULL, 0x0,
					     FUNC1("bpf_check"), false,
					     BPF_FD_TYPE_KPROBE,
					     BPF_FD_TYPE_KRETPROBE,
					     buf, sizeof(buf)));
	FUNC0(FUNC10("kprobe", NULL, 0x0,
					     FUNC1("bpf_check"), false,
					     BPF_FD_TYPE_KPROBE,
					     BPF_FD_TYPE_KRETPROBE,
					     NULL, 0));
	FUNC0(FUNC10("kprobe", NULL, 0x0,
					     FUNC1("bpf_check"), true,
					     BPF_FD_TYPE_KPROBE,
					     BPF_FD_TYPE_KRETPROBE,
					     buf, sizeof(buf)));
	FUNC0(FUNC10("kprobe", NULL, 0x0,
					     FUNC1("bpf_check"), true,
					     BPF_FD_TYPE_KPROBE,
					     BPF_FD_TYPE_KRETPROBE,
					     0, 0));

	/* test nondebug fs uprobe */
	/* the calculation of uprobe file offset is based on gcc 7.3.1 on x64
	 * and the default linker script, which defines __executable_start as
	 * the start of the .text section. The calculation could be different
	 * on different systems with different compilers. The right way is
	 * to parse the ELF file. We took a shortcut here.
	 */
	uprobe_file_offset = (__u64)main - (__u64)&__executable_start;
	FUNC0(FUNC10("uprobe", (char *)argv[0],
					     uprobe_file_offset, 0x0, false,
					     BPF_FD_TYPE_UPROBE,
					     BPF_FD_TYPE_URETPROBE,
					     buf, sizeof(buf)));
	FUNC0(FUNC10("uprobe", (char *)argv[0],
					     uprobe_file_offset, 0x0, true,
					     BPF_FD_TYPE_UPROBE,
					     BPF_FD_TYPE_URETPROBE,
					     buf, sizeof(buf)));

	/* test debug fs uprobe */
	FUNC0(FUNC9((char *)argv[0], uprobe_file_offset,
					   false));
	FUNC0(FUNC9((char *)argv[0], uprobe_file_offset,
					   true));

	return 0;
}