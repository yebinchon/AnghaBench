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
struct probe_trace_arg_ref {char const* offset; struct probe_trace_arg_ref* next; } ;
struct probe_trace_arg {char* value; int /*<<< orphan*/  type; struct probe_trace_arg_ref* ref; } ;
struct bpf_insn_pos {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int BPF_DW ; 
 int /*<<< orphan*/  BPF_JA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_PROLOGUE_START_ARG_REG ; 
 int /*<<< orphan*/  BPF_REG_0 ; 
 int /*<<< orphan*/  BPF_REG_3 ; 
 int /*<<< orphan*/  BPF_REG_7 ; 
 scalar_t__ BPF_REG_ARG3 ; 
 int /*<<< orphan*/  BPF_REG_CTX ; 
 int /*<<< orphan*/  BPF_REG_FP ; 
 int BPF_REG_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  JMP_TO_SUCCESS_CODE ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bpf_insn_pos*) ; 
 int FUNC7 (struct bpf_insn_pos*,int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int FUNC8 (struct bpf_insn_pos*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct bpf_insn_pos*) ; 
 char const* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static int
FUNC13(struct bpf_insn_pos *pos,
		      struct probe_trace_arg *args, int nargs)
{
	int err, i;

	for (i = 0; i < nargs; i++) {
		struct probe_trace_arg *arg = &args[i];
		const char *reg = arg->value;
		struct probe_trace_arg_ref *ref = NULL;
		int stack_offset = (i + 1) * -8;

		FUNC11("prologue: fetch arg %d, base reg is %s\n",
			 i, reg);

		/* value of base register is stored into ARG3 */
		err = FUNC7(pos, BPF_REG_CTX, reg,
					   BPF_REG_ARG3);
		if (err) {
			FUNC12("prologue: failed to get offset of register %s\n",
			       reg);
			goto errout;
		}

		/* Make r7 the stack pointer. */
		FUNC9(FUNC3(BPF_REG_7, BPF_REG_FP), pos);
		/* r7 += -8 */
		FUNC9(FUNC0(BPF_ADD, BPF_REG_7, stack_offset), pos);
		/*
		 * Store r3 (base register) onto stack
		 * Ensure fp[offset] is set.
		 * fp is the only valid base register when storing
		 * into stack. We are not allowed to use r7 as base
		 * register here.
		 */
		FUNC9(FUNC4(BPF_DW, BPF_REG_FP, BPF_REG_ARG3,
				stack_offset), pos);

		ref = arg->ref;
		while (ref) {
			FUNC11("prologue: arg %d: offset %ld\n",
				 i, ref->offset);
			err = FUNC8(pos, BPF_REG_3, BPF_REG_7,
					   ref->offset);
			if (err) {
				FUNC12("prologue: failed to generate probe_read function call\n");
				goto errout;
			}

			ref = ref->next;
			/*
			 * Load previous result into ARG3. Use
			 * BPF_REG_FP instead of r7 because verifier
			 * allows FP based addressing only.
			 */
			if (ref)
				FUNC9(FUNC2(BPF_DW, BPF_REG_ARG3,
						BPF_REG_FP, stack_offset), pos);
		}
	}

	/* Final pass: read to registers */
	for (i = 0; i < nargs; i++) {
		int insn_sz = (args[i].ref) ? FUNC5(args[i].type) : BPF_DW;

		FUNC11("prologue: load arg %d, insn_sz is %s\n",
			 i, FUNC10(insn_sz));
		FUNC9(FUNC2(insn_sz, BPF_PROLOGUE_START_ARG_REG + i,
				BPF_REG_FP, -BPF_REG_SIZE * (i + 1)), pos);
	}

	FUNC9(FUNC1(BPF_JA, BPF_REG_0, 0, JMP_TO_SUCCESS_CODE), pos);

	return FUNC6(pos);
errout:
	return err;
}