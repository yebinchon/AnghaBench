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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct bpf_verifier_env {scalar_t__ insn_idx; } ;
struct bpf_reg_state {scalar_t__ type; scalar_t__ subreg_def; int /*<<< orphan*/  live; } ;
struct bpf_insn {scalar_t__ src_reg; scalar_t__ off; scalar_t__ imm; scalar_t__ dst_reg; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 scalar_t__ BPF_ALU64 ; 
 scalar_t__ BPF_ARSH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_DIV ; 
 scalar_t__ BPF_END ; 
 scalar_t__ BPF_K ; 
 scalar_t__ BPF_LSH ; 
 scalar_t__ BPF_MOD ; 
 scalar_t__ BPF_MOV ; 
 scalar_t__ BPF_NEG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_REG_0 ; 
 scalar_t__ BPF_RSH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_X ; 
 scalar_t__ DEF_NOT_SUBREG ; 
 int /*<<< orphan*/  DST_OP ; 
 int /*<<< orphan*/  DST_OP_NO_MARK ; 
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  REG_LIVE_WRITTEN ; 
 scalar_t__ SCALAR_VALUE ; 
 int /*<<< orphan*/  SRC_OP ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_reg_state*,scalar_t__) ; 
 int FUNC4 (struct bpf_verifier_env*,struct bpf_insn*) ; 
 int FUNC5 (struct bpf_verifier_env*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_reg_state*,int) ; 
 struct bpf_reg_state* FUNC7 (struct bpf_verifier_env*) ; 
 scalar_t__ FUNC8 (struct bpf_verifier_env*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct bpf_verifier_env*,struct bpf_reg_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct bpf_verifier_env*,char*,...) ; 

__attribute__((used)) static int FUNC11(struct bpf_verifier_env *env, struct bpf_insn *insn)
{
	struct bpf_reg_state *regs = FUNC7(env);
	u8 opcode = FUNC1(insn->code);
	int err;

	if (opcode == BPF_END || opcode == BPF_NEG) {
		if (opcode == BPF_NEG) {
			if (FUNC2(insn->code) != 0 ||
			    insn->src_reg != BPF_REG_0 ||
			    insn->off != 0 || insn->imm != 0) {
				FUNC10(env, "BPF_NEG uses reserved fields\n");
				return -EINVAL;
			}
		} else {
			if (insn->src_reg != BPF_REG_0 || insn->off != 0 ||
			    (insn->imm != 16 && insn->imm != 32 && insn->imm != 64) ||
			    FUNC0(insn->code) == BPF_ALU64) {
				FUNC10(env, "BPF_END uses reserved fields\n");
				return -EINVAL;
			}
		}

		/* check src operand */
		err = FUNC5(env, insn->dst_reg, SRC_OP);
		if (err)
			return err;

		if (FUNC8(env, insn->dst_reg)) {
			FUNC10(env, "R%d pointer arithmetic prohibited\n",
				insn->dst_reg);
			return -EACCES;
		}

		/* check dest operand */
		err = FUNC5(env, insn->dst_reg, DST_OP);
		if (err)
			return err;

	} else if (opcode == BPF_MOV) {

		if (FUNC2(insn->code) == BPF_X) {
			if (insn->imm != 0 || insn->off != 0) {
				FUNC10(env, "BPF_MOV uses reserved fields\n");
				return -EINVAL;
			}

			/* check src operand */
			err = FUNC5(env, insn->src_reg, SRC_OP);
			if (err)
				return err;
		} else {
			if (insn->src_reg != BPF_REG_0 || insn->off != 0) {
				FUNC10(env, "BPF_MOV uses reserved fields\n");
				return -EINVAL;
			}
		}

		/* check dest operand, mark as required later */
		err = FUNC5(env, insn->dst_reg, DST_OP_NO_MARK);
		if (err)
			return err;

		if (FUNC2(insn->code) == BPF_X) {
			struct bpf_reg_state *src_reg = regs + insn->src_reg;
			struct bpf_reg_state *dst_reg = regs + insn->dst_reg;

			if (FUNC0(insn->code) == BPF_ALU64) {
				/* case: R1 = R2
				 * copy register state to dest reg
				 */
				*dst_reg = *src_reg;
				dst_reg->live |= REG_LIVE_WRITTEN;
				dst_reg->subreg_def = DEF_NOT_SUBREG;
			} else {
				/* R1 = (u32) R2 */
				if (FUNC8(env, insn->src_reg)) {
					FUNC10(env,
						"R%d partial copy of pointer\n",
						insn->src_reg);
					return -EACCES;
				} else if (src_reg->type == SCALAR_VALUE) {
					*dst_reg = *src_reg;
					dst_reg->live |= REG_LIVE_WRITTEN;
					dst_reg->subreg_def = env->insn_idx + 1;
				} else {
					FUNC9(env, regs,
							 insn->dst_reg);
				}
				FUNC6(dst_reg, 4);
			}
		} else {
			/* case: R = imm
			 * remember the value we stored into this reg
			 */
			/* clear any state __mark_reg_known doesn't set */
			FUNC9(env, regs, insn->dst_reg);
			regs[insn->dst_reg].type = SCALAR_VALUE;
			if (FUNC0(insn->code) == BPF_ALU64) {
				FUNC3(regs + insn->dst_reg,
						 insn->imm);
			} else {
				FUNC3(regs + insn->dst_reg,
						 (u32)insn->imm);
			}
		}

	} else if (opcode > BPF_END) {
		FUNC10(env, "invalid BPF_ALU opcode %x\n", opcode);
		return -EINVAL;

	} else {	/* all other ALU ops: and, sub, xor, add, ... */

		if (FUNC2(insn->code) == BPF_X) {
			if (insn->imm != 0 || insn->off != 0) {
				FUNC10(env, "BPF_ALU uses reserved fields\n");
				return -EINVAL;
			}
			/* check src1 operand */
			err = FUNC5(env, insn->src_reg, SRC_OP);
			if (err)
				return err;
		} else {
			if (insn->src_reg != BPF_REG_0 || insn->off != 0) {
				FUNC10(env, "BPF_ALU uses reserved fields\n");
				return -EINVAL;
			}
		}

		/* check src2 operand */
		err = FUNC5(env, insn->dst_reg, SRC_OP);
		if (err)
			return err;

		if ((opcode == BPF_MOD || opcode == BPF_DIV) &&
		    FUNC2(insn->code) == BPF_K && insn->imm == 0) {
			FUNC10(env, "div by zero\n");
			return -EINVAL;
		}

		if ((opcode == BPF_LSH || opcode == BPF_RSH ||
		     opcode == BPF_ARSH) && FUNC2(insn->code) == BPF_K) {
			int size = FUNC0(insn->code) == BPF_ALU64 ? 64 : 32;

			if (insn->imm < 0 || insn->imm >= size) {
				FUNC10(env, "invalid shift %d\n", insn->imm);
				return -EINVAL;
			}
		}

		/* check dest operand */
		err = FUNC5(env, insn->dst_reg, DST_OP_NO_MARK);
		if (err)
			return err;

		return FUNC4(env, insn);
	}

	return 0;
}