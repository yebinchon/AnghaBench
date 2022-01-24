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
struct bpf_verifier_state {size_t curframe; TYPE_3__** frame; } ;
struct TYPE_4__ {int level; } ;
struct bpf_verifier_env {TYPE_1__ log; struct bpf_verifier_state* cur_state; } ;
struct TYPE_5__ {int /*<<< orphan*/  value; } ;
struct bpf_reg_state {scalar_t__ type; TYPE_2__ var_off; } ;
struct bpf_insn {size_t src_reg; size_t dst_reg; int /*<<< orphan*/  imm; int /*<<< orphan*/  code; scalar_t__ off; } ;
struct TYPE_6__ {struct bpf_reg_state* regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_JA ; 
 scalar_t__ BPF_JEQ ; 
 scalar_t__ BPF_JMP32 ; 
 scalar_t__ BPF_JNE ; 
 scalar_t__ BPF_JSLE ; 
 scalar_t__ BPF_K ; 
 int BPF_LOG_LEVEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t BPF_REG_0 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_X ; 
 int EACCES ; 
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ SCALAR_VALUE ; 
 int /*<<< orphan*/  SRC_OP ; 
 int FUNC3 (struct bpf_verifier_env*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_reg_state*,int) ; 
 int FUNC5 (struct bpf_reg_state*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC6 (struct bpf_verifier_env*,size_t) ; 
 int FUNC7 (struct bpf_verifier_env*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_verifier_state*,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bpf_verifier_env*,TYPE_3__*) ; 
 struct bpf_verifier_state* FUNC10 (struct bpf_verifier_env*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bpf_reg_state*,struct bpf_reg_state*,struct bpf_reg_state*,struct bpf_reg_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct bpf_reg_state*,struct bpf_reg_state*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (struct bpf_reg_state*,struct bpf_reg_state*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC16 (struct bpf_insn*,struct bpf_reg_state*,struct bpf_reg_state*,struct bpf_verifier_state*,struct bpf_verifier_state*) ; 
 int /*<<< orphan*/  FUNC17 (struct bpf_verifier_env*,char*,...) ; 

__attribute__((used)) static int FUNC18(struct bpf_verifier_env *env,
			     struct bpf_insn *insn, int *insn_idx)
{
	struct bpf_verifier_state *this_branch = env->cur_state;
	struct bpf_verifier_state *other_branch;
	struct bpf_reg_state *regs = this_branch->frame[this_branch->curframe]->regs;
	struct bpf_reg_state *dst_reg, *other_branch_regs, *src_reg = NULL;
	u8 opcode = FUNC1(insn->code);
	bool is_jmp32;
	int pred = -1;
	int err;

	/* Only conditional jumps are expected to reach here. */
	if (opcode == BPF_JA || opcode > BPF_JSLE) {
		FUNC17(env, "invalid BPF_JMP/JMP32 opcode %x\n", opcode);
		return -EINVAL;
	}

	if (FUNC2(insn->code) == BPF_X) {
		if (insn->imm != 0) {
			FUNC17(env, "BPF_JMP/JMP32 uses reserved fields\n");
			return -EINVAL;
		}

		/* check src1 operand */
		err = FUNC3(env, insn->src_reg, SRC_OP);
		if (err)
			return err;

		if (FUNC6(env, insn->src_reg)) {
			FUNC17(env, "R%d pointer comparison prohibited\n",
				insn->src_reg);
			return -EACCES;
		}
		src_reg = &regs[insn->src_reg];
	} else {
		if (insn->src_reg != BPF_REG_0) {
			FUNC17(env, "BPF_JMP/JMP32 uses reserved fields\n");
			return -EINVAL;
		}
	}

	/* check src2 operand */
	err = FUNC3(env, insn->dst_reg, SRC_OP);
	if (err)
		return err;

	dst_reg = &regs[insn->dst_reg];
	is_jmp32 = FUNC0(insn->code) == BPF_JMP32;

	if (FUNC2(insn->code) == BPF_K)
		pred = FUNC5(dst_reg, insn->imm,
				       opcode, is_jmp32);
	else if (src_reg->type == SCALAR_VALUE &&
		 FUNC15(src_reg->var_off))
		pred = FUNC5(dst_reg, src_reg->var_off.value,
				       opcode, is_jmp32);
	if (pred >= 0) {
		err = FUNC7(env, insn->dst_reg);
		if (FUNC2(insn->code) == BPF_X && !err)
			err = FUNC7(env, insn->src_reg);
		if (err)
			return err;
	}
	if (pred == 1) {
		/* only follow the goto, ignore fall-through */
		*insn_idx += insn->off;
		return 0;
	} else if (pred == 0) {
		/* only follow fall-through branch, since
		 * that's where the program will go
		 */
		return 0;
	}

	other_branch = FUNC10(env, *insn_idx + insn->off + 1, *insn_idx,
				  false);
	if (!other_branch)
		return -EFAULT;
	other_branch_regs = other_branch->frame[other_branch->curframe]->regs;

	/* detect if we are comparing against a constant value so we can adjust
	 * our min/max values for our dst register.
	 * this is only legit if both are scalars (or pointers to the same
	 * object, I suppose, but we don't support that right now), because
	 * otherwise the different base pointers mean the offsets aren't
	 * comparable.
	 */
	if (FUNC2(insn->code) == BPF_X) {
		struct bpf_reg_state *src_reg = &regs[insn->src_reg];
		struct bpf_reg_state lo_reg0 = *dst_reg;
		struct bpf_reg_state lo_reg1 = *src_reg;
		struct bpf_reg_state *src_lo, *dst_lo;

		dst_lo = &lo_reg0;
		src_lo = &lo_reg1;
		FUNC4(dst_lo, 4);
		FUNC4(src_lo, 4);

		if (dst_reg->type == SCALAR_VALUE &&
		    src_reg->type == SCALAR_VALUE) {
			if (FUNC15(src_reg->var_off) ||
			    (is_jmp32 && FUNC15(src_lo->var_off)))
				FUNC12(&other_branch_regs[insn->dst_reg],
						dst_reg,
						is_jmp32
						? src_lo->var_off.value
						: src_reg->var_off.value,
						opcode, is_jmp32);
			else if (FUNC15(dst_reg->var_off) ||
				 (is_jmp32 && FUNC15(dst_lo->var_off)))
				FUNC13(&other_branch_regs[insn->src_reg],
						    src_reg,
						    is_jmp32
						    ? dst_lo->var_off.value
						    : dst_reg->var_off.value,
						    opcode, is_jmp32);
			else if (!is_jmp32 &&
				 (opcode == BPF_JEQ || opcode == BPF_JNE))
				/* Comparing for equality, we can combine knowledge */
				FUNC11(&other_branch_regs[insn->src_reg],
						    &other_branch_regs[insn->dst_reg],
						    src_reg, dst_reg, opcode);
		}
	} else if (dst_reg->type == SCALAR_VALUE) {
		FUNC12(&other_branch_regs[insn->dst_reg],
					dst_reg, insn->imm, opcode, is_jmp32);
	}

	/* detect if R == 0 where R is returned from bpf_map_lookup_elem().
	 * NOTE: these optimizations below are related with pointer comparison
	 *       which will never be JMP32.
	 */
	if (!is_jmp32 && FUNC2(insn->code) == BPF_K &&
	    insn->imm == 0 && (opcode == BPF_JEQ || opcode == BPF_JNE) &&
	    FUNC14(dst_reg->type)) {
		/* Mark all identical registers in each branch as either
		 * safe or unknown depending R == 0 or R != 0 conditional.
		 */
		FUNC8(this_branch, insn->dst_reg,
				      opcode == BPF_JNE);
		FUNC8(other_branch, insn->dst_reg,
				      opcode == BPF_JEQ);
	} else if (!FUNC16(insn, dst_reg, &regs[insn->src_reg],
					   this_branch, other_branch) &&
		   FUNC6(env, insn->dst_reg)) {
		FUNC17(env, "R%d pointer comparison prohibited\n",
			insn->dst_reg);
		return -EACCES;
	}
	if (env->log.level & BPF_LOG_LEVEL)
		FUNC9(env, this_branch->frame[this_branch->curframe]);
	return 0;
}