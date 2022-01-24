#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tn_buf ;
struct bpf_verifier_env {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  value; } ;
struct bpf_reg_state {int type; scalar_t__ smin_value; scalar_t__ umin_value; scalar_t__ smax_value; scalar_t__ umax_value; int /*<<< orphan*/  off; TYPE_4__ var_off; scalar_t__ precise; int /*<<< orphan*/  live; TYPE_1__* map_ptr; int /*<<< orphan*/  range; int /*<<< orphan*/  ref_obj_id; int /*<<< orphan*/  id; } ;
struct bpf_func_state {int allocated_stack; int acquired_refs; TYPE_3__* refs; TYPE_2__* stack; struct bpf_reg_state* regs; scalar_t__ frameno; } ;
typedef  enum bpf_reg_type { ____Placeholder_bpf_reg_type } bpf_reg_type ;
struct TYPE_9__ {int id; } ;
struct TYPE_8__ {size_t* slot_type; struct bpf_reg_state spilled_ptr; } ;
struct TYPE_7__ {int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; } ;

/* Variables and functions */
 int BPF_REG_SIZE ; 
 int CONST_PTR_TO_MAP ; 
 int MAX_BPF_REG ; 
 int NOT_INIT ; 
 int PTR_TO_MAP_VALUE ; 
 int PTR_TO_MAP_VALUE_OR_NULL ; 
 int PTR_TO_STACK ; 
 scalar_t__ S64_MAX ; 
 scalar_t__ S64_MIN ; 
 int SCALAR_VALUE ; 
 size_t STACK_INVALID ; 
 size_t STACK_SPILL ; 
 scalar_t__ U64_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_verifier_env*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * reg_type_str ; 
 char* slot_type_char ; 
 scalar_t__ FUNC2 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,TYPE_4__) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_verifier_env*,char*,...) ; 

__attribute__((used)) static void FUNC7(struct bpf_verifier_env *env,
				 const struct bpf_func_state *state)
{
	const struct bpf_reg_state *reg;
	enum bpf_reg_type t;
	int i;

	if (state->frameno)
		FUNC6(env, " frame%d:", state->frameno);
	for (i = 0; i < MAX_BPF_REG; i++) {
		reg = &state->regs[i];
		t = reg->type;
		if (t == NOT_INIT)
			continue;
		FUNC6(env, " R%d", i);
		FUNC0(env, reg->live);
		FUNC6(env, "=%s", reg_type_str[t]);
		if (t == SCALAR_VALUE && reg->precise)
			FUNC6(env, "P");
		if ((t == SCALAR_VALUE || t == PTR_TO_STACK) &&
		    FUNC2(reg->var_off)) {
			/* reg->off should be 0 for SCALAR_VALUE */
			FUNC6(env, "%lld", reg->var_off.value + reg->off);
		} else {
			FUNC6(env, "(id=%d", reg->id);
			if (FUNC1(t))
				FUNC6(env, ",ref_obj_id=%d", reg->ref_obj_id);
			if (t != SCALAR_VALUE)
				FUNC6(env, ",off=%d", reg->off);
			if (FUNC5(t))
				FUNC6(env, ",r=%d", reg->range);
			else if (t == CONST_PTR_TO_MAP ||
				 t == PTR_TO_MAP_VALUE ||
				 t == PTR_TO_MAP_VALUE_OR_NULL)
				FUNC6(env, ",ks=%d,vs=%d",
					reg->map_ptr->key_size,
					reg->map_ptr->value_size);
			if (FUNC2(reg->var_off)) {
				/* Typically an immediate SCALAR_VALUE, but
				 * could be a pointer whose offset is too big
				 * for reg->off
				 */
				FUNC6(env, ",imm=%llx", reg->var_off.value);
			} else {
				if (reg->smin_value != reg->umin_value &&
				    reg->smin_value != S64_MIN)
					FUNC6(env, ",smin_value=%lld",
						(long long)reg->smin_value);
				if (reg->smax_value != reg->umax_value &&
				    reg->smax_value != S64_MAX)
					FUNC6(env, ",smax_value=%lld",
						(long long)reg->smax_value);
				if (reg->umin_value != 0)
					FUNC6(env, ",umin_value=%llu",
						(unsigned long long)reg->umin_value);
				if (reg->umax_value != U64_MAX)
					FUNC6(env, ",umax_value=%llu",
						(unsigned long long)reg->umax_value);
				if (!FUNC3(reg->var_off)) {
					char tn_buf[48];

					FUNC4(tn_buf, sizeof(tn_buf), reg->var_off);
					FUNC6(env, ",var_off=%s", tn_buf);
				}
			}
			FUNC6(env, ")");
		}
	}
	for (i = 0; i < state->allocated_stack / BPF_REG_SIZE; i++) {
		char types_buf[BPF_REG_SIZE + 1];
		bool valid = false;
		int j;

		for (j = 0; j < BPF_REG_SIZE; j++) {
			if (state->stack[i].slot_type[j] != STACK_INVALID)
				valid = true;
			types_buf[j] = slot_type_char[
					state->stack[i].slot_type[j]];
		}
		types_buf[BPF_REG_SIZE] = 0;
		if (!valid)
			continue;
		FUNC6(env, " fp%d", (-i - 1) * BPF_REG_SIZE);
		FUNC0(env, state->stack[i].spilled_ptr.live);
		if (state->stack[i].slot_type[0] == STACK_SPILL) {
			reg = &state->stack[i].spilled_ptr;
			t = reg->type;
			FUNC6(env, "=%s", reg_type_str[t]);
			if (t == SCALAR_VALUE && reg->precise)
				FUNC6(env, "P");
			if (t == SCALAR_VALUE && FUNC2(reg->var_off))
				FUNC6(env, "%lld", reg->var_off.value + reg->off);
		} else {
			FUNC6(env, "=%s", types_buf);
		}
	}
	if (state->acquired_refs && state->refs[0].id) {
		FUNC6(env, " refs=%d", state->refs[0].id);
		for (i = 1; i < state->acquired_refs; i++)
			if (state->refs[i].id)
				FUNC6(env, ",%d", state->refs[i].id);
	}
	FUNC6(env, "\n");
}