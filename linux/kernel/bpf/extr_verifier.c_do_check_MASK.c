#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct bpf_verifier_state {size_t curframe; int speculative; int branches; scalar_t__ active_spin_lock; void** frame; } ;
struct TYPE_7__ {int level; } ;
struct bpf_verifier_env {int prev_insn_idx; int insn_idx; scalar_t__ insn_processed; TYPE_4__* subprog_info; TYPE_3__* prog; TYPE_2__* insn_aux_data; struct bpf_verifier_state* cur_state; int /*<<< orphan*/  jmps_processed; int /*<<< orphan*/  allow_ptr_leaks; TYPE_1__ log; int /*<<< orphan*/ * prev_linfo; } ;
struct bpf_reg_state {int type; } ;
struct bpf_insn_cbs {struct bpf_verifier_env* private_data; int /*<<< orphan*/  (* cb_print ) (struct bpf_verifier_env*,char*,scalar_t__) ;} ;
struct bpf_insn {int src_reg; int dst_reg; scalar_t__ off; scalar_t__ imm; int /*<<< orphan*/  code; } ;
struct bpf_func_state {int dummy; } ;
typedef  enum bpf_reg_type { ____Placeholder_bpf_reg_type } bpf_reg_type ;
struct TYPE_12__ {int /*<<< orphan*/  stack_depth; } ;
struct TYPE_11__ {size_t type; } ;
struct TYPE_10__ {int /*<<< orphan*/  stack_depth; } ;
struct TYPE_9__ {int len; TYPE_6__* aux; struct bpf_insn* insnsi; } ;
struct TYPE_8__ {int seen; int ptr_type; } ;

/* Variables and functions */
 scalar_t__ BPF_ABS ; 
 scalar_t__ BPF_ALU ; 
 scalar_t__ BPF_ALU64 ; 
 scalar_t__ BPF_CALL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_COMPLEXITY_LIMIT_INSNS ; 
 scalar_t__ BPF_EXIT ; 
 scalar_t__ BPF_FUNC_spin_unlock ; 
 scalar_t__ BPF_IMM ; 
 scalar_t__ BPF_IND ; 
 scalar_t__ BPF_JA ; 
 scalar_t__ BPF_JMP ; 
 scalar_t__ BPF_JMP32 ; 
 scalar_t__ BPF_K ; 
 scalar_t__ BPF_LD ; 
 scalar_t__ BPF_LDX ; 
 int BPF_LOG_LEVEL ; 
 int BPF_LOG_LEVEL2 ; 
 int /*<<< orphan*/  BPF_MAIN_FUNC ; 
 scalar_t__ BPF_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int BPF_PSEUDO_CALL ; 
 int /*<<< orphan*/  BPF_READ ; 
 int BPF_REG_0 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_ST ; 
 scalar_t__ BPF_STX ; 
 int /*<<< orphan*/  BPF_WRITE ; 
 scalar_t__ BPF_XADD ; 
 int /*<<< orphan*/  DST_OP_NO_MARK ; 
 int E2BIG ; 
 int EACCES ; 
 int EAGAIN ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NOT_INIT ; 
 int /*<<< orphan*/  SRC_OP ; 
 scalar_t__ FUNC5 (TYPE_6__*) ; 
 int FUNC6 (struct bpf_verifier_env*,scalar_t__,int) ; 
 int FUNC7 (struct bpf_verifier_env*,struct bpf_insn*) ; 
 int FUNC8 (struct bpf_verifier_env*,struct bpf_insn*,int*) ; 
 int FUNC9 (struct bpf_verifier_env*,struct bpf_insn*,int*) ; 
 int FUNC10 (struct bpf_verifier_env*,scalar_t__,int) ; 
 int FUNC11 (struct bpf_verifier_env*,struct bpf_insn*) ; 
 int FUNC12 (struct bpf_verifier_env*,struct bpf_insn*) ; 
 int FUNC13 (struct bpf_verifier_env*,int,size_t,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC14 (struct bpf_verifier_env*) ; 
 int FUNC15 (struct bpf_verifier_env*,int,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct bpf_verifier_env*) ; 
 int FUNC17 (struct bpf_verifier_env*,size_t,struct bpf_insn*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 struct bpf_reg_state* FUNC19 (struct bpf_verifier_env*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC20 (struct bpf_verifier_env*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct bpf_verifier_env*,int) ; 
 scalar_t__ FUNC22 (struct bpf_verifier_env*,int) ; 
 int FUNC23 (struct bpf_verifier_env*,size_t) ; 
 int /*<<< orphan*/  FUNC24 (struct bpf_verifier_state*) ; 
 void* FUNC25 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 () ; 
 int FUNC27 (struct bpf_verifier_env*,int*,int*) ; 
 int FUNC28 (struct bpf_verifier_env*,int*) ; 
 int /*<<< orphan*/  FUNC29 (struct bpf_insn_cbs const*,struct bpf_insn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct bpf_verifier_env*,void*) ; 
 TYPE_5__* FUNC31 (struct bpf_verifier_env*,int) ; 
 scalar_t__ FUNC32 (int,int) ; 
 int /*<<< orphan*/ * reg_type_str ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct bpf_verifier_env*,struct bpf_verifier_state*) ; 
 int /*<<< orphan*/  FUNC35 (struct bpf_verifier_env*,char*,...) ; 
 int /*<<< orphan*/  FUNC36 (struct bpf_verifier_env*,scalar_t__,char*) ; 

__attribute__((used)) static int FUNC37(struct bpf_verifier_env *env)
{
	struct bpf_verifier_state *state;
	struct bpf_insn *insns = env->prog->insnsi;
	struct bpf_reg_state *regs;
	int insn_cnt = env->prog->len;
	bool do_print_state = false;
	int prev_insn_idx = -1;

	env->prev_linfo = NULL;

	state = FUNC25(sizeof(struct bpf_verifier_state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;
	state->curframe = 0;
	state->speculative = false;
	state->branches = 1;
	state->frame[0] = FUNC25(sizeof(struct bpf_func_state), GFP_KERNEL);
	if (!state->frame[0]) {
		FUNC24(state);
		return -ENOMEM;
	}
	env->cur_state = state;
	FUNC20(env, state->frame[0],
			BPF_MAIN_FUNC /* callsite */,
			0 /* frameno */,
			0 /* subprogno, zero == main subprog */);

	for (;;) {
		struct bpf_insn *insn;
		u8 class;
		int err;

		env->prev_insn_idx = prev_insn_idx;
		if (env->insn_idx >= insn_cnt) {
			FUNC35(env, "invalid insn idx %d insn_cnt %d\n",
				env->insn_idx, insn_cnt);
			return -EFAULT;
		}

		insn = &insns[env->insn_idx];
		class = FUNC0(insn->code);

		if (++env->insn_processed > BPF_COMPLEXITY_LIMIT_INSNS) {
			FUNC35(env,
				"BPF program is too large. Processed %d insn\n",
				env->insn_processed);
			return -E2BIG;
		}

		err = FUNC23(env, env->insn_idx);
		if (err < 0)
			return err;
		if (err == 1) {
			/* found equivalent state, can prune the search */
			if (env->log.level & BPF_LOG_LEVEL) {
				if (do_print_state)
					FUNC35(env, "\nfrom %d to %d%s: safe\n",
						env->prev_insn_idx, env->insn_idx,
						env->cur_state->speculative ?
						" (speculative execution)" : "");
				else
					FUNC35(env, "%d: safe\n", env->insn_idx);
			}
			goto process_bpf_exit;
		}

		if (FUNC33(current))
			return -EAGAIN;

		if (FUNC26())
			FUNC18();

		if (env->log.level & BPF_LOG_LEVEL2 ||
		    (env->log.level & BPF_LOG_LEVEL && do_print_state)) {
			if (env->log.level & BPF_LOG_LEVEL2)
				FUNC35(env, "%d:", env->insn_idx);
			else
				FUNC35(env, "\nfrom %d to %d%s:",
					env->prev_insn_idx, env->insn_idx,
					env->cur_state->speculative ?
					" (speculative execution)" : "");
			FUNC30(env, state->frame[state->curframe]);
			do_print_state = false;
		}

		if (env->log.level & BPF_LOG_LEVEL) {
			const struct bpf_insn_cbs cbs = {
				.cb_print	= verbose,
				.private_data	= env,
			};

			FUNC36(env, env->insn_idx, "; ");
			FUNC35(env, "%d: ", env->insn_idx);
			FUNC29(&cbs, insn, env->allow_ptr_leaks);
		}

		if (FUNC5(env->prog->aux)) {
			err = FUNC6(env, env->insn_idx,
							   env->prev_insn_idx);
			if (err)
				return err;
		}

		regs = FUNC19(env);
		env->insn_aux_data[env->insn_idx].seen = true;
		prev_insn_idx = env->insn_idx;

		if (class == BPF_ALU || class == BPF_ALU64) {
			err = FUNC7(env, insn);
			if (err)
				return err;

		} else if (class == BPF_LDX) {
			enum bpf_reg_type *prev_src_type, src_reg_type;

			/* check for reserved fields is already done */

			/* check src operand */
			err = FUNC15(env, insn->src_reg, SRC_OP);
			if (err)
				return err;

			err = FUNC15(env, insn->dst_reg, DST_OP_NO_MARK);
			if (err)
				return err;

			src_reg_type = regs[insn->src_reg].type;

			/* check that memory (src_reg + off) is readable,
			 * the state of dst_reg will be updated by this func
			 */
			err = FUNC13(env, env->insn_idx, insn->src_reg,
					       insn->off, FUNC3(insn->code),
					       BPF_READ, insn->dst_reg, false);
			if (err)
				return err;

			prev_src_type = &env->insn_aux_data[env->insn_idx].ptr_type;

			if (*prev_src_type == NOT_INIT) {
				/* saw a valid insn
				 * dst_reg = *(u32 *)(src_reg + off)
				 * save type to validate intersecting paths
				 */
				*prev_src_type = src_reg_type;

			} else if (FUNC32(src_reg_type, *prev_src_type)) {
				/* ABuser program is trying to use the same insn
				 * dst_reg = *(u32*) (src_reg + off)
				 * with different pointer types:
				 * src_reg == ctx in one branch and
				 * src_reg == stack|map in some other branch.
				 * Reject it.
				 */
				FUNC35(env, "same insn cannot be used with different pointers\n");
				return -EINVAL;
			}

		} else if (class == BPF_STX) {
			enum bpf_reg_type *prev_dst_type, dst_reg_type;

			if (FUNC1(insn->code) == BPF_XADD) {
				err = FUNC17(env, env->insn_idx, insn);
				if (err)
					return err;
				env->insn_idx++;
				continue;
			}

			/* check src1 operand */
			err = FUNC15(env, insn->src_reg, SRC_OP);
			if (err)
				return err;
			/* check src2 operand */
			err = FUNC15(env, insn->dst_reg, SRC_OP);
			if (err)
				return err;

			dst_reg_type = regs[insn->dst_reg].type;

			/* check that memory (dst_reg + off) is writeable */
			err = FUNC13(env, env->insn_idx, insn->dst_reg,
					       insn->off, FUNC3(insn->code),
					       BPF_WRITE, insn->src_reg, false);
			if (err)
				return err;

			prev_dst_type = &env->insn_aux_data[env->insn_idx].ptr_type;

			if (*prev_dst_type == NOT_INIT) {
				*prev_dst_type = dst_reg_type;
			} else if (FUNC32(dst_reg_type, *prev_dst_type)) {
				FUNC35(env, "same insn cannot be used with different pointers\n");
				return -EINVAL;
			}

		} else if (class == BPF_ST) {
			if (FUNC1(insn->code) != BPF_MEM ||
			    insn->src_reg != BPF_REG_0) {
				FUNC35(env, "BPF_ST uses reserved fields\n");
				return -EINVAL;
			}
			/* check src operand */
			err = FUNC15(env, insn->dst_reg, SRC_OP);
			if (err)
				return err;

			if (FUNC21(env, insn->dst_reg)) {
				FUNC35(env, "BPF_ST stores into R%d %s is not allowed\n",
					insn->dst_reg,
					reg_type_str[FUNC31(env, insn->dst_reg)->type]);
				return -EACCES;
			}

			/* check that memory (dst_reg + off) is writeable */
			err = FUNC13(env, env->insn_idx, insn->dst_reg,
					       insn->off, FUNC3(insn->code),
					       BPF_WRITE, -1, false);
			if (err)
				return err;

		} else if (class == BPF_JMP || class == BPF_JMP32) {
			u8 opcode = FUNC2(insn->code);

			env->jmps_processed++;
			if (opcode == BPF_CALL) {
				if (FUNC4(insn->code) != BPF_K ||
				    insn->off != 0 ||
				    (insn->src_reg != BPF_REG_0 &&
				     insn->src_reg != BPF_PSEUDO_CALL) ||
				    insn->dst_reg != BPF_REG_0 ||
				    class == BPF_JMP32) {
					FUNC35(env, "BPF_CALL uses reserved fields\n");
					return -EINVAL;
				}

				if (env->cur_state->active_spin_lock &&
				    (insn->src_reg == BPF_PSEUDO_CALL ||
				     insn->imm != BPF_FUNC_spin_unlock)) {
					FUNC35(env, "function calls are not allowed while holding a lock\n");
					return -EINVAL;
				}
				if (insn->src_reg == BPF_PSEUDO_CALL)
					err = FUNC9(env, insn, &env->insn_idx);
				else
					err = FUNC10(env, insn->imm, env->insn_idx);
				if (err)
					return err;

			} else if (opcode == BPF_JA) {
				if (FUNC4(insn->code) != BPF_K ||
				    insn->imm != 0 ||
				    insn->src_reg != BPF_REG_0 ||
				    insn->dst_reg != BPF_REG_0 ||
				    class == BPF_JMP32) {
					FUNC35(env, "BPF_JA uses reserved fields\n");
					return -EINVAL;
				}

				env->insn_idx += insn->off + 1;
				continue;

			} else if (opcode == BPF_EXIT) {
				if (FUNC4(insn->code) != BPF_K ||
				    insn->imm != 0 ||
				    insn->src_reg != BPF_REG_0 ||
				    insn->dst_reg != BPF_REG_0 ||
				    class == BPF_JMP32) {
					FUNC35(env, "BPF_EXIT uses reserved fields\n");
					return -EINVAL;
				}

				if (env->cur_state->active_spin_lock) {
					FUNC35(env, "bpf_spin_unlock is missing\n");
					return -EINVAL;
				}

				if (state->curframe) {
					/* exit from nested function */
					err = FUNC28(env, &env->insn_idx);
					if (err)
						return err;
					do_print_state = true;
					continue;
				}

				err = FUNC14(env);
				if (err)
					return err;

				/* eBPF calling convetion is such that R0 is used
				 * to return the value from eBPF program.
				 * Make sure that it's readable at this time
				 * of bpf_exit, which means that program wrote
				 * something into it earlier
				 */
				err = FUNC15(env, BPF_REG_0, SRC_OP);
				if (err)
					return err;

				if (FUNC22(env, BPF_REG_0)) {
					FUNC35(env, "R0 leaks addr as return value\n");
					return -EACCES;
				}

				err = FUNC16(env);
				if (err)
					return err;
process_bpf_exit:
				FUNC34(env, env->cur_state);
				err = FUNC27(env, &prev_insn_idx,
						&env->insn_idx);
				if (err < 0) {
					if (err != -ENOENT)
						return err;
					break;
				} else {
					do_print_state = true;
					continue;
				}
			} else {
				err = FUNC8(env, insn, &env->insn_idx);
				if (err)
					return err;
			}
		} else if (class == BPF_LD) {
			u8 mode = FUNC1(insn->code);

			if (mode == BPF_ABS || mode == BPF_IND) {
				err = FUNC11(env, insn);
				if (err)
					return err;

			} else if (mode == BPF_IMM) {
				err = FUNC12(env, insn);
				if (err)
					return err;

				env->insn_idx++;
				env->insn_aux_data[env->insn_idx].seen = true;
			} else {
				FUNC35(env, "invalid BPF_LD mode\n");
				return -EINVAL;
			}
		} else {
			FUNC35(env, "unknown insn class %d\n", class);
			return -EINVAL;
		}

		env->insn_idx++;
	}

	env->prog->aux->stack_depth = env->subprog_info[0].stack_depth;
	return 0;
}