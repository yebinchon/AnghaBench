
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_verifier_state {size_t curframe; struct bpf_func_state** frame; } ;
struct TYPE_2__ {int level; } ;
struct bpf_verifier_env {TYPE_1__ log; struct bpf_verifier_state* cur_state; } ;
struct bpf_reg_state {scalar_t__ type; } ;
struct bpf_func_state {int callsite; struct bpf_reg_state* regs; } ;


 int BPF_LOG_LEVEL ;
 size_t BPF_REG_0 ;
 int EINVAL ;
 scalar_t__ PTR_TO_STACK ;
 int free_func_state (struct bpf_func_state*) ;
 int print_verifier_state (struct bpf_verifier_env*,struct bpf_func_state*) ;
 int transfer_reference_state (struct bpf_func_state*,struct bpf_func_state*) ;
 int verbose (struct bpf_verifier_env*,char*,...) ;

__attribute__((used)) static int prepare_func_exit(struct bpf_verifier_env *env, int *insn_idx)
{
 struct bpf_verifier_state *state = env->cur_state;
 struct bpf_func_state *caller, *callee;
 struct bpf_reg_state *r0;
 int err;

 callee = state->frame[state->curframe];
 r0 = &callee->regs[BPF_REG_0];
 if (r0->type == PTR_TO_STACK) {






  verbose(env, "cannot return stack pointer to the caller\n");
  return -EINVAL;
 }

 state->curframe--;
 caller = state->frame[state->curframe];

 caller->regs[BPF_REG_0] = *r0;


 err = transfer_reference_state(caller, callee);
 if (err)
  return err;

 *insn_idx = callee->callsite + 1;
 if (env->log.level & BPF_LOG_LEVEL) {
  verbose(env, "returning from callee:\n");
  print_verifier_state(env, callee);
  verbose(env, "to caller at %d:\n", *insn_idx);
  print_verifier_state(env, caller);
 }

 free_func_state(callee);
 state->frame[state->curframe + 1] = ((void*)0);
 return 0;
}
