
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_verifier_state {int curframe; struct bpf_func_state** frame; } ;
struct TYPE_2__ {int level; } ;
struct bpf_verifier_env {TYPE_1__ log; struct bpf_verifier_state* cur_state; } ;
struct bpf_insn {int imm; } ;
struct bpf_func_state {int * regs; } ;


 int BPF_LOG_LEVEL ;
 int BPF_REG_1 ;
 int BPF_REG_5 ;
 int CALLER_SAVED_REGS ;
 int DST_OP_NO_MARK ;
 int E2BIG ;
 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_CALL_FRAMES ;
 int * caller_saved ;
 int check_reg_arg (struct bpf_verifier_env*,int ,int ) ;
 int find_subprog (struct bpf_verifier_env*,int) ;
 int init_func_state (struct bpf_verifier_env*,struct bpf_func_state*,int,int,int) ;
 struct bpf_func_state* kzalloc (int,int ) ;
 int mark_reg_not_init (struct bpf_verifier_env*,int *,int ) ;
 int print_verifier_state (struct bpf_verifier_env*,struct bpf_func_state*) ;
 int transfer_reference_state (struct bpf_func_state*,struct bpf_func_state*) ;
 int verbose (struct bpf_verifier_env*,char*,...) ;

__attribute__((used)) static int check_func_call(struct bpf_verifier_env *env, struct bpf_insn *insn,
      int *insn_idx)
{
 struct bpf_verifier_state *state = env->cur_state;
 struct bpf_func_state *caller, *callee;
 int i, err, subprog, target_insn;

 if (state->curframe + 1 >= MAX_CALL_FRAMES) {
  verbose(env, "the call stack of %d frames is too deep\n",
   state->curframe + 2);
  return -E2BIG;
 }

 target_insn = *insn_idx + insn->imm;
 subprog = find_subprog(env, target_insn + 1);
 if (subprog < 0) {
  verbose(env, "verifier bug. No program starts at insn %d\n",
   target_insn + 1);
  return -EFAULT;
 }

 caller = state->frame[state->curframe];
 if (state->frame[state->curframe + 1]) {
  verbose(env, "verifier bug. Frame %d already allocated\n",
   state->curframe + 1);
  return -EFAULT;
 }

 callee = kzalloc(sizeof(*callee), GFP_KERNEL);
 if (!callee)
  return -ENOMEM;
 state->frame[state->curframe + 1] = callee;





 init_func_state(env, callee,

   *insn_idx ,
   state->curframe + 1 ,
   subprog );


 err = transfer_reference_state(callee, caller);
 if (err)
  return err;




 for (i = BPF_REG_1; i <= BPF_REG_5; i++)
  callee->regs[i] = caller->regs[i];


 for (i = 0; i < CALLER_SAVED_REGS; i++) {
  mark_reg_not_init(env, caller->regs, caller_saved[i]);
  check_reg_arg(env, caller_saved[i], DST_OP_NO_MARK);
 }


 state->curframe++;


 *insn_idx = target_insn;

 if (env->log.level & BPF_LOG_LEVEL) {
  verbose(env, "caller:\n");
  print_verifier_state(env, caller);
  verbose(env, "callee:\n");
  print_verifier_state(env, callee);
 }
 return 0;
}
