#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scale_test_def {char* member_0; int member_2; int /*<<< orphan*/  fails; int /*<<< orphan*/  attach_type; int /*<<< orphan*/  file; int /*<<< orphan*/  member_1; } ;
typedef  int /*<<< orphan*/ * libbpf_print_fn_t ;
struct TYPE_2__ {scalar_t__ verifier_stats; } ;

/* Variables and functions */
 int FUNC0 (struct scale_test_def*) ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_CGROUP_SYSCTL ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_LWT_SEG6LOCAL ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_RAW_TRACEPOINT ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_SCHED_CLS ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_XDP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ env ; 
 int /*<<< orphan*/ * libbpf_debug_print ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	struct scale_test_def tests[] = {
		{ "loop3.o", BPF_PROG_TYPE_RAW_TRACEPOINT, true /* fails */ },

		{ "test_verif_scale1.o", BPF_PROG_TYPE_SCHED_CLS },
		{ "test_verif_scale2.o", BPF_PROG_TYPE_SCHED_CLS },
		{ "test_verif_scale3.o", BPF_PROG_TYPE_SCHED_CLS },

		/* full unroll by llvm */
		{ "pyperf50.o", BPF_PROG_TYPE_RAW_TRACEPOINT },
		{ "pyperf100.o", BPF_PROG_TYPE_RAW_TRACEPOINT },
		{ "pyperf180.o", BPF_PROG_TYPE_RAW_TRACEPOINT },

		/* partial unroll. llvm will unroll loop ~150 times.
		 * C loop count -> 600.
		 * Asm loop count -> 4.
		 * 16k insns in loop body.
		 * Total of 5 such loops. Total program size ~82k insns.
		 */
		{ "pyperf600.o", BPF_PROG_TYPE_RAW_TRACEPOINT },

		/* no unroll at all.
		 * C loop count -> 600.
		 * ASM loop count -> 600.
		 * ~110 insns in loop body.
		 * Total of 5 such loops. Total program size ~1500 insns.
		 */
		{ "pyperf600_nounroll.o", BPF_PROG_TYPE_RAW_TRACEPOINT },

		{ "loop1.o", BPF_PROG_TYPE_RAW_TRACEPOINT },
		{ "loop2.o", BPF_PROG_TYPE_RAW_TRACEPOINT },
		{ "loop4.o", BPF_PROG_TYPE_SCHED_CLS },
		{ "loop5.o", BPF_PROG_TYPE_SCHED_CLS },

		/* partial unroll. 19k insn in a loop.
		 * Total program size 20.8k insn.
		 * ~350k processed_insns
		 */
		{ "strobemeta.o", BPF_PROG_TYPE_RAW_TRACEPOINT },

		/* no unroll, tiny loops */
		{ "strobemeta_nounroll1.o", BPF_PROG_TYPE_RAW_TRACEPOINT },
		{ "strobemeta_nounroll2.o", BPF_PROG_TYPE_RAW_TRACEPOINT },

		{ "test_sysctl_loop1.o", BPF_PROG_TYPE_CGROUP_SYSCTL },
		{ "test_sysctl_loop2.o", BPF_PROG_TYPE_CGROUP_SYSCTL },

		{ "test_xdp_loop.o", BPF_PROG_TYPE_XDP },
		{ "test_seg6_loop.o", BPF_PROG_TYPE_LWT_SEG6LOCAL },
	};
	libbpf_print_fn_t old_print_fn = NULL;
	int err, i;

	if (env.verifier_stats) {
		FUNC4();
		old_print_fn = FUNC3(libbpf_debug_print);
	}

	for (i = 0; i < FUNC0(tests); i++) {
		const struct scale_test_def *test = &tests[i];

		if (!FUNC5(test->file))
			continue;

		err = FUNC2(test->file, test->attach_type);
		FUNC1(err && !test->fails);
	}

	if (env.verifier_stats)
		FUNC3(old_print_fn);
}