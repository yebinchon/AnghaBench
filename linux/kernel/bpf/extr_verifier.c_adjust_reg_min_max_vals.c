
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bpf_verifier_state {size_t curframe; struct bpf_func_state** frame; } ;
struct bpf_verifier_env {scalar_t__ allow_ptr_leaks; struct bpf_verifier_state* cur_state; } ;
struct bpf_reg_state {scalar_t__ type; int member_0; } ;
struct bpf_insn {size_t dst_reg; size_t src_reg; int imm; int code; } ;
struct bpf_func_state {struct bpf_reg_state* regs; } ;


 int BPF_OP (int ) ;
 scalar_t__ BPF_SRC (int ) ;
 int BPF_SUB ;
 scalar_t__ BPF_X ;
 int EACCES ;
 int EINVAL ;
 scalar_t__ SCALAR_VALUE ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (struct bpf_reg_state*) ;
 int __mark_reg_known (struct bpf_reg_state*,int ) ;
 int adjust_ptr_min_max_vals (struct bpf_verifier_env*,struct bpf_insn*,struct bpf_reg_state*,struct bpf_reg_state*) ;
 int adjust_scalar_min_max_vals (struct bpf_verifier_env*,struct bpf_insn*,struct bpf_reg_state*,struct bpf_reg_state) ;
 int * bpf_alu_string ;
 int mark_chain_precision (struct bpf_verifier_env*,size_t) ;
 int mark_reg_unknown (struct bpf_verifier_env*,struct bpf_reg_state*,size_t) ;
 int print_verifier_state (struct bpf_verifier_env*,struct bpf_func_state*) ;
 int verbose (struct bpf_verifier_env*,char*,...) ;

__attribute__((used)) static int adjust_reg_min_max_vals(struct bpf_verifier_env *env,
       struct bpf_insn *insn)
{
 struct bpf_verifier_state *vstate = env->cur_state;
 struct bpf_func_state *state = vstate->frame[vstate->curframe];
 struct bpf_reg_state *regs = state->regs, *dst_reg, *src_reg;
 struct bpf_reg_state *ptr_reg = ((void*)0), off_reg = {0};
 u8 opcode = BPF_OP(insn->code);
 int err;

 dst_reg = &regs[insn->dst_reg];
 src_reg = ((void*)0);
 if (dst_reg->type != SCALAR_VALUE)
  ptr_reg = dst_reg;
 if (BPF_SRC(insn->code) == BPF_X) {
  src_reg = &regs[insn->src_reg];
  if (src_reg->type != SCALAR_VALUE) {
   if (dst_reg->type != SCALAR_VALUE) {




    if (opcode == BPF_SUB && env->allow_ptr_leaks) {
     mark_reg_unknown(env, regs, insn->dst_reg);
     return 0;
    }
    verbose(env, "R%d pointer %s pointer prohibited\n",
     insn->dst_reg,
     bpf_alu_string[opcode >> 4]);
    return -EACCES;
   } else {




    err = mark_chain_precision(env, insn->dst_reg);
    if (err)
     return err;
    return adjust_ptr_min_max_vals(env, insn,
              src_reg, dst_reg);
   }
  } else if (ptr_reg) {

   err = mark_chain_precision(env, insn->src_reg);
   if (err)
    return err;
   return adjust_ptr_min_max_vals(env, insn,
             dst_reg, src_reg);
  }
 } else {



  off_reg.type = SCALAR_VALUE;
  __mark_reg_known(&off_reg, insn->imm);
  src_reg = &off_reg;
  if (ptr_reg)
   return adjust_ptr_min_max_vals(env, insn,
             ptr_reg, src_reg);
 }


 if (WARN_ON_ONCE(ptr_reg)) {
  print_verifier_state(env, state);
  verbose(env, "verifier internal error: unexpected ptr_reg\n");
  return -EINVAL;
 }
 if (WARN_ON(!src_reg)) {
  print_verifier_state(env, state);
  verbose(env, "verifier internal error: no src_reg\n");
  return -EINVAL;
 }
 return adjust_scalar_min_max_vals(env, insn, dst_reg, *src_reg);
}
