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
typedef  int /*<<< orphan*/  trace_program ;
typedef  int /*<<< orphan*/  test_skb ;
struct bpf_load_program_attr {char* license; int insns_cnt; int log_level; struct bpf_insn const* insns; int /*<<< orphan*/  prog_type; } ;
struct bpf_insn {int dummy; } ;
typedef  int /*<<< orphan*/  skb_program ;
typedef  int /*<<< orphan*/  error ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_DW ; 
 struct bpf_insn const FUNC0 () ; 
 struct bpf_insn const FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bpf_insn const FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_SOCKET_FILTER ; 
 int /*<<< orphan*/  BPF_REG_0 ; 
 int /*<<< orphan*/  BPF_REG_1 ; 
 int /*<<< orphan*/  BPF_REG_6 ; 
 struct bpf_insn const FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_W ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,...) ; 
 int FUNC5 (struct bpf_load_program_attr*,char*,int) ; 
 int FUNC6 (int,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  errno ; 

void FUNC9(void)
{
	__u32 duration = 0;
	char error[4096];

	const struct bpf_insn trace_program[] = {
		FUNC1(BPF_DW, BPF_REG_6, BPF_REG_1, 0),
		FUNC1(BPF_W, BPF_REG_0, BPF_REG_6, 0),
		FUNC2(BPF_REG_0, 42),
		FUNC3(BPF_W, BPF_REG_6, BPF_REG_0, 0),
		FUNC0(),
	};

	struct bpf_load_program_attr load_attr = {
		.prog_type = BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE,
		.license = "GPL v2",
		.insns = trace_program,
		.insns_cnt = sizeof(trace_program) / sizeof(struct bpf_insn),
		.log_level = 2,
	};

	int bpf_fd = FUNC5(&load_attr, error, sizeof(error));
	if (FUNC4(bpf_fd < 0, "bpf_raw_tracepoint_writable loaded",
		  "failed: %d errno %d\n", bpf_fd, errno))
		return;

	const struct bpf_insn skb_program[] = {
		FUNC2(BPF_REG_0, 0),
		FUNC0(),
	};

	struct bpf_load_program_attr skb_load_attr = {
		.prog_type = BPF_PROG_TYPE_SOCKET_FILTER,
		.license = "GPL v2",
		.insns = skb_program,
		.insns_cnt = sizeof(skb_program) / sizeof(struct bpf_insn),
	};

	int filter_fd =
		FUNC5(&skb_load_attr, error, sizeof(error));
	if (FUNC4(filter_fd < 0, "test_program_loaded", "failed: %d errno %d\n",
		  filter_fd, errno))
		goto out_bpffd;

	int tp_fd = FUNC7("bpf_test_finish", bpf_fd);
	if (FUNC4(tp_fd < 0, "bpf_raw_tracepoint_writable opened",
		  "failed: %d errno %d\n", tp_fd, errno))
		goto out_filterfd;

	char test_skb[128] = {
		0,
	};

	__u32 prog_ret;
	int err = FUNC6(filter_fd, 1, test_skb, sizeof(test_skb), 0,
				    0, &prog_ret, 0);
	FUNC4(err != 42, "test_run",
	      "tracepoint did not modify return value\n");
	FUNC4(prog_ret != 0, "test_run_ret",
	      "socket_filter did not return 0\n");

	FUNC8(tp_fd);

	err = FUNC6(filter_fd, 1, test_skb, sizeof(test_skb), 0, 0,
				&prog_ret, 0);
	FUNC4(err != 0, "test_run_notrace",
	      "test_run failed with %d errno %d\n", err, errno);
	FUNC4(prog_ret != 0, "test_run_ret_notrace",
	      "socket_filter did not return 0\n");

out_filterfd:
	FUNC8(filter_fd);
out_bpffd:
	FUNC8(bpf_fd);
}