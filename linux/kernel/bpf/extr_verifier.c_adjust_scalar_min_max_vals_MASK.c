#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct bpf_verifier_env {int dummy; } ;
struct TYPE_23__ {int value; int mask; } ;
struct bpf_reg_state {scalar_t__ smin_value; scalar_t__ smax_value; int umin_value; int umax_value; TYPE_1__ var_off; } ;
struct bpf_insn {int /*<<< orphan*/  code; int /*<<< orphan*/  dst_reg; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
#define  BPF_ADD 135 
 scalar_t__ BPF_ALU64 ; 
#define  BPF_AND 134 
#define  BPF_ARSH 133 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  BPF_LSH 132 
#define  BPF_MUL 131 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  BPF_OR 130 
#define  BPF_RSH 129 
#define  BPF_SUB 128 
 void* S64_MAX ; 
 void* S64_MIN ; 
 int U32_MAX ; 
 void* U64_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_reg_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_reg_state*,int) ; 
 struct bpf_reg_state* FUNC9 (struct bpf_verifier_env*) ; 
 int /*<<< orphan*/  FUNC10 (struct bpf_verifier_env*,struct bpf_reg_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 scalar_t__ FUNC12 (scalar_t__,int) ; 
 int FUNC13 (struct bpf_verifier_env*,struct bpf_insn*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__) ; 
 TYPE_1__ FUNC16 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC17 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC18 (TYPE_1__,int) ; 
 int FUNC19 (TYPE_1__) ; 
 TYPE_1__ FUNC20 (TYPE_1__,int) ; 
 TYPE_1__ FUNC21 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC22 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC23 (TYPE_1__,int) ; 
 TYPE_1__ FUNC24 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC25 (struct bpf_verifier_env*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct bpf_verifier_env *env,
				      struct bpf_insn *insn,
				      struct bpf_reg_state *dst_reg,
				      struct bpf_reg_state src_reg)
{
	struct bpf_reg_state *regs = FUNC9(env);
	u8 opcode = FUNC1(insn->code);
	bool src_known, dst_known;
	s64 smin_val, smax_val;
	u64 umin_val, umax_val;
	u64 insn_bitness = (FUNC0(insn->code) == BPF_ALU64) ? 64 : 32;
	u32 dst = insn->dst_reg;
	int ret;

	if (insn_bitness == 32) {
		/* Relevant for 32-bit RSH: Information can propagate towards
		 * LSB, so it isn't sufficient to only truncate the output to
		 * 32 bits.
		 */
		FUNC8(dst_reg, 4);
		FUNC8(&src_reg, 4);
	}

	smin_val = src_reg.smin_value;
	smax_val = src_reg.smax_value;
	umin_val = src_reg.umin_value;
	umax_val = src_reg.umax_value;
	src_known = FUNC19(src_reg.var_off);
	dst_known = FUNC19(dst_reg->var_off);

	if ((src_known && (smin_val != smax_val || umin_val != umax_val)) ||
	    smin_val > smax_val || umin_val > umax_val) {
		/* Taint dst register if offset had invalid bounds derived from
		 * e.g. dead branches.
		 */
		FUNC4(dst_reg);
		return 0;
	}

	if (!src_known &&
	    opcode != BPF_ADD && opcode != BPF_SUB && opcode != BPF_AND) {
		FUNC4(dst_reg);
		return 0;
	}

	switch (opcode) {
	case BPF_ADD:
		ret = FUNC13(env, insn);
		if (ret < 0) {
			FUNC25(env, "R%d tried to add from different pointers or scalars\n", dst);
			return ret;
		}
		if (FUNC14(dst_reg->smin_value, smin_val) ||
		    FUNC14(dst_reg->smax_value, smax_val)) {
			dst_reg->smin_value = S64_MIN;
			dst_reg->smax_value = S64_MAX;
		} else {
			dst_reg->smin_value += smin_val;
			dst_reg->smax_value += smax_val;
		}
		if (dst_reg->umin_value + umin_val < umin_val ||
		    dst_reg->umax_value + umax_val < umax_val) {
			dst_reg->umin_value = 0;
			dst_reg->umax_value = U64_MAX;
		} else {
			dst_reg->umin_value += umin_val;
			dst_reg->umax_value += umax_val;
		}
		dst_reg->var_off = FUNC16(dst_reg->var_off, src_reg.var_off);
		break;
	case BPF_SUB:
		ret = FUNC13(env, insn);
		if (ret < 0) {
			FUNC25(env, "R%d tried to sub from different pointers or scalars\n", dst);
			return ret;
		}
		if (FUNC15(dst_reg->smin_value, smax_val) ||
		    FUNC15(dst_reg->smax_value, smin_val)) {
			/* Overflow possible, we know nothing */
			dst_reg->smin_value = S64_MIN;
			dst_reg->smax_value = S64_MAX;
		} else {
			dst_reg->smin_value -= smax_val;
			dst_reg->smax_value -= smin_val;
		}
		if (dst_reg->umin_value < umax_val) {
			/* Overflow possible, we know nothing */
			dst_reg->umin_value = 0;
			dst_reg->umax_value = U64_MAX;
		} else {
			/* Cannot overflow (as long as bounds are consistent) */
			dst_reg->umin_value -= umax_val;
			dst_reg->umax_value -= umin_val;
		}
		dst_reg->var_off = FUNC24(dst_reg->var_off, src_reg.var_off);
		break;
	case BPF_MUL:
		dst_reg->var_off = FUNC21(dst_reg->var_off, src_reg.var_off);
		if (smin_val < 0 || dst_reg->smin_value < 0) {
			/* Ain't nobody got time to multiply that sign */
			FUNC3(dst_reg);
			FUNC7(dst_reg);
			break;
		}
		/* Both values are positive, so we can work with unsigned and
		 * copy the result to signed (unless it exceeds S64_MAX).
		 */
		if (umax_val > U32_MAX || dst_reg->umax_value > U32_MAX) {
			/* Potential overflow, we know nothing */
			FUNC3(dst_reg);
			/* (except what we can learn from the var_off) */
			FUNC7(dst_reg);
			break;
		}
		dst_reg->umin_value *= umin_val;
		dst_reg->umax_value *= umax_val;
		if (dst_reg->umax_value > S64_MAX) {
			/* Overflow possible, we know nothing */
			dst_reg->smin_value = S64_MIN;
			dst_reg->smax_value = S64_MAX;
		} else {
			dst_reg->smin_value = dst_reg->umin_value;
			dst_reg->smax_value = dst_reg->umax_value;
		}
		break;
	case BPF_AND:
		if (src_known && dst_known) {
			FUNC2(dst_reg, dst_reg->var_off.value &
						  src_reg.var_off.value);
			break;
		}
		/* We get our minimum from the var_off, since that's inherently
		 * bitwise.  Our maximum is the minimum of the operands' maxima.
		 */
		dst_reg->var_off = FUNC17(dst_reg->var_off, src_reg.var_off);
		dst_reg->umin_value = dst_reg->var_off.value;
		dst_reg->umax_value = FUNC12(dst_reg->umax_value, umax_val);
		if (dst_reg->smin_value < 0 || smin_val < 0) {
			/* Lose signed bounds when ANDing negative numbers,
			 * ain't nobody got time for that.
			 */
			dst_reg->smin_value = S64_MIN;
			dst_reg->smax_value = S64_MAX;
		} else {
			/* ANDing two positives gives a positive, so safe to
			 * cast result into s64.
			 */
			dst_reg->smin_value = dst_reg->umin_value;
			dst_reg->smax_value = dst_reg->umax_value;
		}
		/* We may learn something more from the var_off */
		FUNC7(dst_reg);
		break;
	case BPF_OR:
		if (src_known && dst_known) {
			FUNC2(dst_reg, dst_reg->var_off.value |
						  src_reg.var_off.value);
			break;
		}
		/* We get our maximum from the var_off, and our minimum is the
		 * maximum of the operands' minima
		 */
		dst_reg->var_off = FUNC22(dst_reg->var_off, src_reg.var_off);
		dst_reg->umin_value = FUNC11(dst_reg->umin_value, umin_val);
		dst_reg->umax_value = dst_reg->var_off.value |
				      dst_reg->var_off.mask;
		if (dst_reg->smin_value < 0 || smin_val < 0) {
			/* Lose signed bounds when ORing negative numbers,
			 * ain't nobody got time for that.
			 */
			dst_reg->smin_value = S64_MIN;
			dst_reg->smax_value = S64_MAX;
		} else {
			/* ORing two positives gives a positive, so safe to
			 * cast result into s64.
			 */
			dst_reg->smin_value = dst_reg->umin_value;
			dst_reg->smax_value = dst_reg->umax_value;
		}
		/* We may learn something more from the var_off */
		FUNC7(dst_reg);
		break;
	case BPF_LSH:
		if (umax_val >= insn_bitness) {
			/* Shifts greater than 31 or 63 are undefined.
			 * This includes shifts by a negative number.
			 */
			FUNC10(env, regs, insn->dst_reg);
			break;
		}
		/* We lose all sign bit information (except what we can pick
		 * up from var_off)
		 */
		dst_reg->smin_value = S64_MIN;
		dst_reg->smax_value = S64_MAX;
		/* If we might shift our top bit out, then we know nothing */
		if (dst_reg->umax_value > 1ULL << (63 - umax_val)) {
			dst_reg->umin_value = 0;
			dst_reg->umax_value = U64_MAX;
		} else {
			dst_reg->umin_value <<= umin_val;
			dst_reg->umax_value <<= umax_val;
		}
		dst_reg->var_off = FUNC20(dst_reg->var_off, umin_val);
		/* We may learn something more from the var_off */
		FUNC7(dst_reg);
		break;
	case BPF_RSH:
		if (umax_val >= insn_bitness) {
			/* Shifts greater than 31 or 63 are undefined.
			 * This includes shifts by a negative number.
			 */
			FUNC10(env, regs, insn->dst_reg);
			break;
		}
		/* BPF_RSH is an unsigned shift.  If the value in dst_reg might
		 * be negative, then either:
		 * 1) src_reg might be zero, so the sign bit of the result is
		 *    unknown, so we lose our signed bounds
		 * 2) it's known negative, thus the unsigned bounds capture the
		 *    signed bounds
		 * 3) the signed bounds cross zero, so they tell us nothing
		 *    about the result
		 * If the value in dst_reg is known nonnegative, then again the
		 * unsigned bounts capture the signed bounds.
		 * Thus, in all cases it suffices to blow away our signed bounds
		 * and rely on inferring new ones from the unsigned bounds and
		 * var_off of the result.
		 */
		dst_reg->smin_value = S64_MIN;
		dst_reg->smax_value = S64_MAX;
		dst_reg->var_off = FUNC23(dst_reg->var_off, umin_val);
		dst_reg->umin_value >>= umax_val;
		dst_reg->umax_value >>= umin_val;
		/* We may learn something more from the var_off */
		FUNC7(dst_reg);
		break;
	case BPF_ARSH:
		if (umax_val >= insn_bitness) {
			/* Shifts greater than 31 or 63 are undefined.
			 * This includes shifts by a negative number.
			 */
			FUNC10(env, regs, insn->dst_reg);
			break;
		}

		/* Upon reaching here, src_known is true and
		 * umax_val is equal to umin_val.
		 */
		dst_reg->smin_value >>= umin_val;
		dst_reg->smax_value >>= umin_val;
		dst_reg->var_off = FUNC18(dst_reg->var_off, umin_val);

		/* blow away the dst_reg umin_value/umax_value and rely on
		 * dst_reg var_off to refine the result.
		 */
		dst_reg->umin_value = 0;
		dst_reg->umax_value = U64_MAX;
		FUNC7(dst_reg);
		break;
	default:
		FUNC10(env, regs, insn->dst_reg);
		break;
	}

	if (FUNC0(insn->code) != BPF_ALU64) {
		/* 32-bit ALU ops are (32,32)->32 */
		FUNC8(dst_reg, 4);
	}

	FUNC6(dst_reg);
	FUNC5(dst_reg);
	return 0;
}