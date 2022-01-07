
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct bpf_verifier_state {size_t curframe; struct bpf_func_state** frame; } ;
struct bpf_verifier_env {int insn_idx; TYPE_1__* prog; struct bpf_verifier_state* cur_state; } ;
struct bpf_reg_state {scalar_t__ type; int subreg_def; int live; int parent; } ;
struct bpf_insn {int dummy; } ;
struct bpf_func_state {struct bpf_reg_state* regs; } ;
typedef enum reg_arg_type { ____Placeholder_reg_arg_type } reg_arg_type ;
struct TYPE_2__ {struct bpf_insn* insnsi; } ;


 size_t BPF_REG_FP ;
 int DEF_NOT_SUBREG ;
 int DST_OP ;
 int EACCES ;
 int EINVAL ;
 size_t MAX_BPF_REG ;
 scalar_t__ NOT_INIT ;
 int REG_LIVE_READ32 ;
 int REG_LIVE_READ64 ;
 int REG_LIVE_WRITTEN ;
 int SRC_OP ;
 int is_reg64 (struct bpf_verifier_env*,struct bpf_insn*,size_t,struct bpf_reg_state*,int) ;
 int mark_insn_zext (struct bpf_verifier_env*,struct bpf_reg_state*) ;
 int mark_reg_read (struct bpf_verifier_env*,struct bpf_reg_state*,int ,int ) ;
 int mark_reg_unknown (struct bpf_verifier_env*,struct bpf_reg_state*,size_t) ;
 int verbose (struct bpf_verifier_env*,char*,...) ;

__attribute__((used)) static int check_reg_arg(struct bpf_verifier_env *env, u32 regno,
    enum reg_arg_type t)
{
 struct bpf_verifier_state *vstate = env->cur_state;
 struct bpf_func_state *state = vstate->frame[vstate->curframe];
 struct bpf_insn *insn = env->prog->insnsi + env->insn_idx;
 struct bpf_reg_state *reg, *regs = state->regs;
 bool rw64;

 if (regno >= MAX_BPF_REG) {
  verbose(env, "R%d is invalid\n", regno);
  return -EINVAL;
 }

 reg = &regs[regno];
 rw64 = is_reg64(env, insn, regno, reg, t);
 if (t == SRC_OP) {

  if (reg->type == NOT_INIT) {
   verbose(env, "R%d !read_ok\n", regno);
   return -EACCES;
  }

  if (regno == BPF_REG_FP)
   return 0;

  if (rw64)
   mark_insn_zext(env, reg);

  return mark_reg_read(env, reg, reg->parent,
         rw64 ? REG_LIVE_READ64 : REG_LIVE_READ32);
 } else {

  if (regno == BPF_REG_FP) {
   verbose(env, "frame pointer is read only\n");
   return -EACCES;
  }
  reg->live |= REG_LIVE_WRITTEN;
  reg->subreg_def = rw64 ? DEF_NOT_SUBREG : env->insn_idx + 1;
  if (t == DST_OP)
   mark_reg_unknown(env, regs, regno);
 }
 return 0;
}
