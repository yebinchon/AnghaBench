
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_verifier_state {int curframe; struct bpf_func_state** frame; } ;
struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {int dummy; } ;
struct bpf_func_state {int allocated_stack; TYPE_1__* stack; struct bpf_reg_state* regs; } ;
struct TYPE_2__ {struct bpf_reg_state spilled_ptr; } ;


 int BPF_REG_6 ;
 int BPF_REG_FP ;
 int BPF_REG_SIZE ;
 int BUILD_BUG_ON (int) ;
 int EFAULT ;
 int MAX_BPF_REG ;
 int REG_LIVE_READ64 ;
 int WARN (int,char*,int,int) ;
 int mark_insn_zext (struct bpf_verifier_env*,struct bpf_reg_state*) ;
 int propagate_liveness_reg (struct bpf_verifier_env*,struct bpf_reg_state*,struct bpf_reg_state*) ;

__attribute__((used)) static int propagate_liveness(struct bpf_verifier_env *env,
         const struct bpf_verifier_state *vstate,
         struct bpf_verifier_state *vparent)
{
 struct bpf_reg_state *state_reg, *parent_reg;
 struct bpf_func_state *state, *parent;
 int i, frame, err = 0;

 if (vparent->curframe != vstate->curframe) {
  WARN(1, "propagate_live: parent frame %d current frame %d\n",
       vparent->curframe, vstate->curframe);
  return -EFAULT;
 }

 BUILD_BUG_ON(BPF_REG_FP + 1 != MAX_BPF_REG);
 for (frame = 0; frame <= vstate->curframe; frame++) {
  parent = vparent->frame[frame];
  state = vstate->frame[frame];
  parent_reg = parent->regs;
  state_reg = state->regs;

  for (i = frame < vstate->curframe ? BPF_REG_6 : 0; i < BPF_REG_FP; i++) {
   err = propagate_liveness_reg(env, &state_reg[i],
           &parent_reg[i]);
   if (err < 0)
    return err;
   if (err == REG_LIVE_READ64)
    mark_insn_zext(env, &parent_reg[i]);
  }


  for (i = 0; i < state->allocated_stack / BPF_REG_SIZE &&
       i < parent->allocated_stack / BPF_REG_SIZE; i++) {
   parent_reg = &parent->stack[i].spilled_ptr;
   state_reg = &state->stack[i].spilled_ptr;
   err = propagate_liveness_reg(env, state_reg,
           parent_reg);
   if (err < 0)
    return err;
  }
 }
 return 0;
}
