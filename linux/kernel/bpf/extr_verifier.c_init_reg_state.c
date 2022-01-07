
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {int type; int frameno; int subreg_def; int * parent; int live; } ;
struct bpf_func_state {int frameno; struct bpf_reg_state* regs; } ;


 size_t BPF_REG_1 ;
 size_t BPF_REG_FP ;
 int DEF_NOT_SUBREG ;
 int MAX_BPF_REG ;
 int PTR_TO_CTX ;
 int PTR_TO_STACK ;
 int REG_LIVE_NONE ;
 int mark_reg_known_zero (struct bpf_verifier_env*,struct bpf_reg_state*,size_t) ;
 int mark_reg_not_init (struct bpf_verifier_env*,struct bpf_reg_state*,int) ;

__attribute__((used)) static void init_reg_state(struct bpf_verifier_env *env,
      struct bpf_func_state *state)
{
 struct bpf_reg_state *regs = state->regs;
 int i;

 for (i = 0; i < MAX_BPF_REG; i++) {
  mark_reg_not_init(env, regs, i);
  regs[i].live = REG_LIVE_NONE;
  regs[i].parent = ((void*)0);
  regs[i].subreg_def = DEF_NOT_SUBREG;
 }


 regs[BPF_REG_FP].type = PTR_TO_STACK;
 mark_reg_known_zero(env, regs, BPF_REG_FP);
 regs[BPF_REG_FP].frameno = state->frameno;


 regs[BPF_REG_1].type = PTR_TO_CTX;
 mark_reg_known_zero(env, regs, BPF_REG_1);
}
