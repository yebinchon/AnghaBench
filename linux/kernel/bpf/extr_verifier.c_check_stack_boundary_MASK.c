#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  tn_buf ;
struct bpf_verifier_env {int /*<<< orphan*/  allow_ptr_leaks; } ;
struct TYPE_7__ {int value; } ;
struct bpf_reg_state {size_t type; int off; int smax_value; int smin_value; TYPE_2__ var_off; } ;
struct bpf_func_state {int allocated_stack; TYPE_1__* stack; } ;
struct bpf_call_arg_meta {int access_size; int regno; scalar_t__ raw_mode; } ;
struct TYPE_8__ {scalar_t__ type; int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {scalar_t__* slot_type; TYPE_4__ spilled_ptr; } ;

/* Variables and functions */
 int BPF_MAX_VAR_OFF ; 
 int BPF_REG_SIZE ; 
 int EACCES ; 
 size_t PTR_TO_STACK ; 
 int /*<<< orphan*/  REG_LIVE_READ64 ; 
 scalar_t__ SCALAR_VALUE ; 
 scalar_t__ STACK_MISC ; 
 scalar_t__ STACK_SPILL ; 
 scalar_t__ STACK_ZERO ; 
 int FUNC0 (struct bpf_verifier_env*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 struct bpf_func_state* FUNC2 (struct bpf_verifier_env*,struct bpf_reg_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_verifier_env*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bpf_reg_state* FUNC4 (struct bpf_verifier_env*,int) ; 
 int /*<<< orphan*/ * reg_type_str ; 
 scalar_t__ FUNC5 (struct bpf_reg_state*) ; 
 scalar_t__ FUNC6 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,TYPE_2__) ; 
 int FUNC8 (struct bpf_verifier_env*,struct bpf_func_state*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bpf_verifier_env*,char*,...) ; 

__attribute__((used)) static int FUNC10(struct bpf_verifier_env *env, int regno,
				int access_size, bool zero_size_allowed,
				struct bpf_call_arg_meta *meta)
{
	struct bpf_reg_state *reg = FUNC4(env, regno);
	struct bpf_func_state *state = FUNC2(env, reg);
	int err, min_off, max_off, i, j, slot, spi;

	if (reg->type != PTR_TO_STACK) {
		/* Allow zero-byte read from NULL, regardless of pointer type */
		if (zero_size_allowed && access_size == 0 &&
		    FUNC5(reg))
			return 0;

		FUNC9(env, "R%d type=%s expected=%s\n", regno,
			reg_type_str[reg->type],
			reg_type_str[PTR_TO_STACK]);
		return -EACCES;
	}

	if (FUNC6(reg->var_off)) {
		min_off = max_off = reg->var_off.value + reg->off;
		err = FUNC0(env, regno, min_off, access_size,
					     zero_size_allowed);
		if (err)
			return err;
	} else {
		/* Variable offset is prohibited for unprivileged mode for
		 * simplicity since it requires corresponding support in
		 * Spectre masking for stack ALU.
		 * See also retrieve_ptr_limit().
		 */
		if (!env->allow_ptr_leaks) {
			char tn_buf[48];

			FUNC7(tn_buf, sizeof(tn_buf), reg->var_off);
			FUNC9(env, "R%d indirect variable offset stack access prohibited for !root, var_off=%s\n",
				regno, tn_buf);
			return -EACCES;
		}
		/* Only initialized buffer on stack is allowed to be accessed
		 * with variable offset. With uninitialized buffer it's hard to
		 * guarantee that whole memory is marked as initialized on
		 * helper return since specific bounds are unknown what may
		 * cause uninitialized stack leaking.
		 */
		if (meta && meta->raw_mode)
			meta = NULL;

		if (reg->smax_value >= BPF_MAX_VAR_OFF ||
		    reg->smax_value <= -BPF_MAX_VAR_OFF) {
			FUNC9(env, "R%d unbounded indirect variable offset stack access\n",
				regno);
			return -EACCES;
		}
		min_off = reg->smin_value + reg->off;
		max_off = reg->smax_value + reg->off;
		err = FUNC0(env, regno, min_off, access_size,
					     zero_size_allowed);
		if (err) {
			FUNC9(env, "R%d min value is outside of stack bound\n",
				regno);
			return err;
		}
		err = FUNC0(env, regno, max_off, access_size,
					     zero_size_allowed);
		if (err) {
			FUNC9(env, "R%d max value is outside of stack bound\n",
				regno);
			return err;
		}
	}

	if (meta && meta->raw_mode) {
		meta->access_size = access_size;
		meta->regno = regno;
		return 0;
	}

	for (i = min_off; i < max_off + access_size; i++) {
		u8 *stype;

		slot = -i - 1;
		spi = slot / BPF_REG_SIZE;
		if (state->allocated_stack <= slot)
			goto err;
		stype = &state->stack[spi].slot_type[slot % BPF_REG_SIZE];
		if (*stype == STACK_MISC)
			goto mark;
		if (*stype == STACK_ZERO) {
			/* helper can write anything into the stack */
			*stype = STACK_MISC;
			goto mark;
		}
		if (state->stack[spi].slot_type[0] == STACK_SPILL &&
		    state->stack[spi].spilled_ptr.type == SCALAR_VALUE) {
			FUNC1(&state->stack[spi].spilled_ptr);
			for (j = 0; j < BPF_REG_SIZE; j++)
				state->stack[spi].slot_type[j] = STACK_MISC;
			goto mark;
		}

err:
		if (FUNC6(reg->var_off)) {
			FUNC9(env, "invalid indirect read from stack off %d+%d size %d\n",
				min_off, i - min_off, access_size);
		} else {
			char tn_buf[48];

			FUNC7(tn_buf, sizeof(tn_buf), reg->var_off);
			FUNC9(env, "invalid indirect read from stack var_off %s+%d size %d\n",
				tn_buf, i - min_off, access_size);
		}
		return -EACCES;
mark:
		/* reading any byte out of 8-byte 'spill_slot' will cause
		 * the whole slot to be marked as 'read'
		 */
		FUNC3(env, &state->stack[spi].spilled_ptr,
			      state->stack[spi].spilled_ptr.parent,
			      REG_LIVE_READ64);
	}
	return FUNC8(env, state, min_off);
}