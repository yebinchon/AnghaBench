#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_4__ {int* insn_state; int* insn_stack; int cur_stack; } ;
struct bpf_verifier_env {TYPE_2__ cfg; TYPE_1__* prog; } ;
struct bpf_insn {scalar_t__ src_reg; int imm; int off; int /*<<< orphan*/  code; } ;
struct TYPE_3__ {int len; struct bpf_insn* insnsi; } ;

/* Variables and functions */
 scalar_t__ BPF_CALL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_EXIT ; 
 scalar_t__ BPF_JA ; 
 scalar_t__ BPF_JMP ; 
 scalar_t__ BPF_JMP32 ; 
 scalar_t__ BPF_K ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_PSEUDO_CALL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BRANCH ; 
 int DISCOVERED ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EXPLORED ; 
 int /*<<< orphan*/  FALLTHROUGH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_verifier_env*,int) ; 
 void* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ,struct bpf_verifier_env*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_verifier_env*,char*,...) ; 

__attribute__((used)) static int FUNC8(struct bpf_verifier_env *env)
{
	struct bpf_insn *insns = env->prog->insnsi;
	int insn_cnt = env->prog->len;
	int *insn_stack, *insn_state;
	int ret = 0;
	int i, t;

	insn_state = env->cfg.insn_state = FUNC4(insn_cnt, sizeof(int), GFP_KERNEL);
	if (!insn_state)
		return -ENOMEM;

	insn_stack = env->cfg.insn_stack = FUNC4(insn_cnt, sizeof(int), GFP_KERNEL);
	if (!insn_stack) {
		FUNC5(insn_state);
		return -ENOMEM;
	}

	insn_state[0] = DISCOVERED; /* mark 1st insn as discovered */
	insn_stack[0] = 0; /* 0 is the first instruction */
	env->cfg.cur_stack = 1;

peek_stack:
	if (env->cfg.cur_stack == 0)
		goto check_state;
	t = insn_stack[env->cfg.cur_stack - 1];

	if (FUNC0(insns[t].code) == BPF_JMP ||
	    FUNC0(insns[t].code) == BPF_JMP32) {
		u8 opcode = FUNC1(insns[t].code);

		if (opcode == BPF_EXIT) {
			goto mark_explored;
		} else if (opcode == BPF_CALL) {
			ret = FUNC6(t, t + 1, FALLTHROUGH, env, false);
			if (ret == 1)
				goto peek_stack;
			else if (ret < 0)
				goto err_free;
			if (t + 1 < insn_cnt)
				FUNC3(env, t + 1);
			if (insns[t].src_reg == BPF_PSEUDO_CALL) {
				FUNC3(env, t);
				ret = FUNC6(t, t + insns[t].imm + 1, BRANCH,
						env, false);
				if (ret == 1)
					goto peek_stack;
				else if (ret < 0)
					goto err_free;
			}
		} else if (opcode == BPF_JA) {
			if (FUNC2(insns[t].code) != BPF_K) {
				ret = -EINVAL;
				goto err_free;
			}
			/* unconditional jump with single edge */
			ret = FUNC6(t, t + insns[t].off + 1,
					FALLTHROUGH, env, true);
			if (ret == 1)
				goto peek_stack;
			else if (ret < 0)
				goto err_free;
			/* unconditional jmp is not a good pruning point,
			 * but it's marked, since backtracking needs
			 * to record jmp history in is_state_visited().
			 */
			FUNC3(env, t + insns[t].off + 1);
			/* tell verifier to check for equivalent states
			 * after every call and jump
			 */
			if (t + 1 < insn_cnt)
				FUNC3(env, t + 1);
		} else {
			/* conditional jump with two edges */
			FUNC3(env, t);
			ret = FUNC6(t, t + 1, FALLTHROUGH, env, true);
			if (ret == 1)
				goto peek_stack;
			else if (ret < 0)
				goto err_free;

			ret = FUNC6(t, t + insns[t].off + 1, BRANCH, env, true);
			if (ret == 1)
				goto peek_stack;
			else if (ret < 0)
				goto err_free;
		}
	} else {
		/* all other non-branch instructions with single
		 * fall-through edge
		 */
		ret = FUNC6(t, t + 1, FALLTHROUGH, env, false);
		if (ret == 1)
			goto peek_stack;
		else if (ret < 0)
			goto err_free;
	}

mark_explored:
	insn_state[t] = EXPLORED;
	if (env->cfg.cur_stack-- <= 0) {
		FUNC7(env, "pop stack internal bug\n");
		ret = -EFAULT;
		goto err_free;
	}
	goto peek_stack;

check_state:
	for (i = 0; i < insn_cnt; i++) {
		if (insn_state[i] != EXPLORED) {
			FUNC7(env, "unreachable insn %d\n", i);
			ret = -EINVAL;
			goto err_free;
		}
	}
	ret = 0; /* cfg looks good */

err_free:
	FUNC5(insn_state);
	FUNC5(insn_stack);
	env->cfg.insn_state = env->cfg.insn_stack = NULL;
	return ret;
}