#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct bpf_verifier_env {int subprog_cnt; scalar_t__ insn_idx; TYPE_3__* cur_state; TYPE_2__* ops; TYPE_1__* prog; } ;
struct bpf_reg_state {scalar_t__ type; scalar_t__ subreg_def; } ;
struct bpf_insn {size_t dst_reg; scalar_t__ off; size_t src_reg; int /*<<< orphan*/  code; } ;
struct TYPE_6__ {scalar_t__ active_spin_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  gen_ld_abs; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ BPF_ABS ; 
 scalar_t__ BPF_DW ; 
 scalar_t__ BPF_IND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t BPF_REG_0 ; 
 size_t BPF_REG_6 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int CALLER_SAVED_REGS ; 
 int /*<<< orphan*/  DST_OP_NO_MARK ; 
 int EINVAL ; 
 scalar_t__ PTR_TO_CTX ; 
 int /*<<< orphan*/  SRC_OP ; 
 size_t* caller_saved ; 
 int FUNC2 (struct bpf_verifier_env*) ; 
 int FUNC3 (struct bpf_verifier_env*,size_t,int /*<<< orphan*/ ) ; 
 struct bpf_reg_state* FUNC4 (struct bpf_verifier_env*) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_verifier_env*,struct bpf_reg_state*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_verifier_env*,struct bpf_reg_state*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_verifier_env*,char*) ; 

__attribute__((used)) static int FUNC9(struct bpf_verifier_env *env, struct bpf_insn *insn)
{
	struct bpf_reg_state *regs = FUNC4(env);
	u8 mode = FUNC0(insn->code);
	int i, err;

	if (!FUNC7(env->prog->type)) {
		FUNC8(env, "BPF_LD_[ABS|IND] instructions not allowed for this program type\n");
		return -EINVAL;
	}

	if (!env->ops->gen_ld_abs) {
		FUNC8(env, "bpf verifier is misconfigured\n");
		return -EINVAL;
	}

	if (env->subprog_cnt > 1) {
		/* when program has LD_ABS insn JITs and interpreter assume
		 * that r1 == ctx == skb which is not the case for callees
		 * that can have arbitrary arguments. It's problematic
		 * for main prog as well since JITs would need to analyze
		 * all functions in order to make proper register save/restore
		 * decisions in the main prog. Hence disallow LD_ABS with calls
		 */
		FUNC8(env, "BPF_LD_[ABS|IND] instructions cannot be mixed with bpf-to-bpf calls\n");
		return -EINVAL;
	}

	if (insn->dst_reg != BPF_REG_0 || insn->off != 0 ||
	    FUNC1(insn->code) == BPF_DW ||
	    (mode == BPF_ABS && insn->src_reg != BPF_REG_0)) {
		FUNC8(env, "BPF_LD_[ABS|IND] uses reserved fields\n");
		return -EINVAL;
	}

	/* check whether implicit source operand (register R6) is readable */
	err = FUNC3(env, BPF_REG_6, SRC_OP);
	if (err)
		return err;

	/* Disallow usage of BPF_LD_[ABS|IND] with reference tracking, as
	 * gen_ld_abs() may terminate the program at runtime, leading to
	 * reference leak.
	 */
	err = FUNC2(env);
	if (err) {
		FUNC8(env, "BPF_LD_[ABS|IND] cannot be mixed with socket references\n");
		return err;
	}

	if (env->cur_state->active_spin_lock) {
		FUNC8(env, "BPF_LD_[ABS|IND] cannot be used inside bpf_spin_lock-ed region\n");
		return -EINVAL;
	}

	if (regs[BPF_REG_6].type != PTR_TO_CTX) {
		FUNC8(env,
			"at the time of BPF_LD_ABS|IND R6 != pointer to skb\n");
		return -EINVAL;
	}

	if (mode == BPF_IND) {
		/* check explicit source operand */
		err = FUNC3(env, insn->src_reg, SRC_OP);
		if (err)
			return err;
	}

	/* reset caller saved regs to unreadable */
	for (i = 0; i < CALLER_SAVED_REGS; i++) {
		FUNC5(env, regs, caller_saved[i]);
		FUNC3(env, caller_saved[i], DST_OP_NO_MARK);
	}

	/* mark destination R0 register as readable, since it contains
	 * the value fetched from the packet.
	 * Already marked as written above.
	 */
	FUNC6(env, regs, BPF_REG_0);
	/* ld_abs load up to 32-bit skb data. */
	regs[BPF_REG_0].subreg_def = env->insn_idx + 1;
	return 0;
}