#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bpf_verifier_state {int curframe; struct bpf_func_state** frame; } ;
struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {int dummy; } ;
struct bpf_func_state {int allocated_stack; TYPE_1__* stack; struct bpf_reg_state* regs; } ;
struct TYPE_2__ {struct bpf_reg_state spilled_ptr; } ;

/* Variables and functions */
 int BPF_REG_6 ; 
 int BPF_REG_FP ; 
 int BPF_REG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFAULT ; 
 int MAX_BPF_REG ; 
 int REG_LIVE_READ64 ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_verifier_env*,struct bpf_reg_state*) ; 
 int FUNC3 (struct bpf_verifier_env*,struct bpf_reg_state*,struct bpf_reg_state*) ; 

__attribute__((used)) static int FUNC4(struct bpf_verifier_env *env,
			      const struct bpf_verifier_state *vstate,
			      struct bpf_verifier_state *vparent)
{
	struct bpf_reg_state *state_reg, *parent_reg;
	struct bpf_func_state *state, *parent;
	int i, frame, err = 0;

	if (vparent->curframe != vstate->curframe) {
		FUNC1(1, "propagate_live: parent frame %d current frame %d\n",
		     vparent->curframe, vstate->curframe);
		return -EFAULT;
	}
	/* Propagate read liveness of registers... */
	FUNC0(BPF_REG_FP + 1 != MAX_BPF_REG);
	for (frame = 0; frame <= vstate->curframe; frame++) {
		parent = vparent->frame[frame];
		state = vstate->frame[frame];
		parent_reg = parent->regs;
		state_reg = state->regs;
		/* We don't need to worry about FP liveness, it's read-only */
		for (i = frame < vstate->curframe ? BPF_REG_6 : 0; i < BPF_REG_FP; i++) {
			err = FUNC3(env, &state_reg[i],
						     &parent_reg[i]);
			if (err < 0)
				return err;
			if (err == REG_LIVE_READ64)
				FUNC2(env, &parent_reg[i]);
		}

		/* Propagate stack slots. */
		for (i = 0; i < state->allocated_stack / BPF_REG_SIZE &&
			    i < parent->allocated_stack / BPF_REG_SIZE; i++) {
			parent_reg = &parent->stack[i].spilled_ptr;
			state_reg = &state->stack[i].spilled_ptr;
			err = FUNC3(env, state_reg,
						     parent_reg);
			if (err < 0)
				return err;
		}
	}
	return 0;
}