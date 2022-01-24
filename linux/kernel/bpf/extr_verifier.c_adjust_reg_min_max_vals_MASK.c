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
typedef  int u8 ;
struct bpf_verifier_state {size_t curframe; struct bpf_func_state** frame; } ;
struct bpf_verifier_env {scalar_t__ allow_ptr_leaks; struct bpf_verifier_state* cur_state; } ;
struct bpf_reg_state {scalar_t__ type; int /*<<< orphan*/  member_0; } ;
struct bpf_insn {size_t dst_reg; size_t src_reg; int /*<<< orphan*/  imm; int /*<<< orphan*/  code; } ;
struct bpf_func_state {struct bpf_reg_state* regs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int BPF_SUB ; 
 scalar_t__ BPF_X ; 
 int EACCES ; 
 int EINVAL ; 
 scalar_t__ SCALAR_VALUE ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_reg_state*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct bpf_verifier_env*,struct bpf_insn*,struct bpf_reg_state*,struct bpf_reg_state*) ; 
 int FUNC6 (struct bpf_verifier_env*,struct bpf_insn*,struct bpf_reg_state*,struct bpf_reg_state) ; 
 int /*<<< orphan*/ * bpf_alu_string ; 
 int FUNC7 (struct bpf_verifier_env*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_verifier_env*,struct bpf_reg_state*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct bpf_verifier_env*,struct bpf_func_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct bpf_verifier_env*,char*,...) ; 

__attribute__((used)) static int FUNC11(struct bpf_verifier_env *env,
				   struct bpf_insn *insn)
{
	struct bpf_verifier_state *vstate = env->cur_state;
	struct bpf_func_state *state = vstate->frame[vstate->curframe];
	struct bpf_reg_state *regs = state->regs, *dst_reg, *src_reg;
	struct bpf_reg_state *ptr_reg = NULL, off_reg = {0};
	u8 opcode = FUNC0(insn->code);
	int err;

	dst_reg = &regs[insn->dst_reg];
	src_reg = NULL;
	if (dst_reg->type != SCALAR_VALUE)
		ptr_reg = dst_reg;
	if (FUNC1(insn->code) == BPF_X) {
		src_reg = &regs[insn->src_reg];
		if (src_reg->type != SCALAR_VALUE) {
			if (dst_reg->type != SCALAR_VALUE) {
				/* Combining two pointers by any ALU op yields
				 * an arbitrary scalar. Disallow all math except
				 * pointer subtraction
				 */
				if (opcode == BPF_SUB && env->allow_ptr_leaks) {
					FUNC8(env, regs, insn->dst_reg);
					return 0;
				}
				FUNC10(env, "R%d pointer %s pointer prohibited\n",
					insn->dst_reg,
					bpf_alu_string[opcode >> 4]);
				return -EACCES;
			} else {
				/* scalar += pointer
				 * This is legal, but we have to reverse our
				 * src/dest handling in computing the range
				 */
				err = FUNC7(env, insn->dst_reg);
				if (err)
					return err;
				return FUNC5(env, insn,
							       src_reg, dst_reg);
			}
		} else if (ptr_reg) {
			/* pointer += scalar */
			err = FUNC7(env, insn->src_reg);
			if (err)
				return err;
			return FUNC5(env, insn,
						       dst_reg, src_reg);
		}
	} else {
		/* Pretend the src is a reg with a known value, since we only
		 * need to be able to read from this state.
		 */
		off_reg.type = SCALAR_VALUE;
		FUNC4(&off_reg, insn->imm);
		src_reg = &off_reg;
		if (ptr_reg) /* pointer += K */
			return FUNC5(env, insn,
						       ptr_reg, src_reg);
	}

	/* Got here implies adding two SCALAR_VALUEs */
	if (FUNC3(ptr_reg)) {
		FUNC9(env, state);
		FUNC10(env, "verifier internal error: unexpected ptr_reg\n");
		return -EINVAL;
	}
	if (FUNC2(!src_reg)) {
		FUNC9(env, state);
		FUNC10(env, "verifier internal error: no src_reg\n");
		return -EINVAL;
	}
	return FUNC6(env, insn, dst_reg, *src_reg);
}