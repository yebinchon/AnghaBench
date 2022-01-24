#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_7__ {int value; int mask; } ;
struct bpf_reg_state {void* smin_value; void* smax_value; void* umin_value; void* umax_value; TYPE_1__ var_off; } ;
typedef  int s64 ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
#define  BPF_JEQ 138 
#define  BPF_JGE 137 
#define  BPF_JGT 136 
#define  BPF_JLE 135 
#define  BPF_JLT 134 
#define  BPF_JNE 133 
#define  BPF_JSET 132 
#define  BPF_JSGE 131 
#define  BPF_JSGT 130 
#define  BPF_JSLE 129 
#define  BPF_JSLT 128 
 scalar_t__ FUNC0 (int,struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_reg_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct bpf_reg_state*) ; 
 int FUNC6 (TYPE_1__) ; 
 int FUNC7 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 void* FUNC9 (void*,int) ; 
 void* FUNC10 (void*,int) ; 
 TYPE_1__ FUNC11 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 TYPE_1__ FUNC13 (TYPE_1__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct bpf_reg_state *true_reg,
				struct bpf_reg_state *false_reg, u64 val,
				u8 opcode, bool is_jmp32)
{
	s64 sval;

	if (FUNC0(false, false_reg))
		return;

	val = is_jmp32 ? (u32)val : val;
	sval = is_jmp32 ? (s64)(s32)val : (s64)val;

	switch (opcode) {
	case BPF_JEQ:
	case BPF_JNE:
	{
		struct bpf_reg_state *reg =
			opcode == BPF_JEQ ? true_reg : false_reg;

		if (is_jmp32) {
			u64 old_v = reg->var_off.value;
			u64 hi_mask = ~0xffffffffULL;

			reg->var_off.value = (old_v & hi_mask) | val;
			reg->var_off.mask &= hi_mask;
		} else {
			FUNC1(reg, val);
		}
		break;
	}
	case BPF_JSET:
		false_reg->var_off = FUNC11(false_reg->var_off,
					      FUNC12(~val));
		if (FUNC8(val))
			true_reg->var_off = FUNC13(true_reg->var_off,
						    FUNC12(val));
		break;
	case BPF_JGE:
	case BPF_JGT:
	{
		u64 false_umin = opcode == BPF_JGT ? val    : val + 1;
		u64 true_umax = opcode == BPF_JGT ? val - 1 : val;

		if (is_jmp32) {
			false_umin += FUNC7(false_reg->var_off);
			true_umax += FUNC6(true_reg->var_off);
		}
		false_reg->umin_value = FUNC9(false_reg->umin_value, false_umin);
		true_reg->umax_value = FUNC10(true_reg->umax_value, true_umax);
		break;
	}
	case BPF_JSGE:
	case BPF_JSGT:
	{
		s64 false_smin = opcode == BPF_JSGT ? sval    : sval + 1;
		s64 true_smax = opcode == BPF_JSGT ? sval - 1 : sval;

		if (is_jmp32 && !FUNC5(sval, false_reg))
			break;
		false_reg->smin_value = FUNC9(false_reg->smin_value, false_smin);
		true_reg->smax_value = FUNC10(true_reg->smax_value, true_smax);
		break;
	}
	case BPF_JLE:
	case BPF_JLT:
	{
		u64 false_umax = opcode == BPF_JLT ? val    : val - 1;
		u64 true_umin = opcode == BPF_JLT ? val + 1 : val;

		if (is_jmp32) {
			false_umax += FUNC6(false_reg->var_off);
			true_umin += FUNC7(true_reg->var_off);
		}
		false_reg->umax_value = FUNC10(false_reg->umax_value, false_umax);
		true_reg->umin_value = FUNC9(true_reg->umin_value, true_umin);
		break;
	}
	case BPF_JSLE:
	case BPF_JSLT:
	{
		s64 false_smax = opcode == BPF_JSLT ? sval    : sval - 1;
		s64 true_smin = opcode == BPF_JSLT ? sval + 1 : sval;

		if (is_jmp32 && !FUNC5(sval, false_reg))
			break;
		false_reg->smax_value = FUNC10(false_reg->smax_value, false_smax);
		true_reg->smin_value = FUNC9(true_reg->smin_value, true_smin);
		break;
	}
	default:
		break;
	}

	FUNC3(false_reg);
	FUNC3(true_reg);
	/* We might have learned some bits from the bounds. */
	FUNC2(false_reg);
	FUNC2(true_reg);
	/* Intersecting with the old var_off might have improved our bounds
	 * slightly.  e.g. if umax was 0x7f...f and var_off was (0; 0xf...fc),
	 * then new var_off is (0; 0x7f...fc) which improves our umax.
	 */
	FUNC4(false_reg);
	FUNC4(true_reg);
}