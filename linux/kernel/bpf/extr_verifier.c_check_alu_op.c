
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct bpf_verifier_env {scalar_t__ insn_idx; } ;
struct bpf_reg_state {scalar_t__ type; scalar_t__ subreg_def; int live; } ;
struct bpf_insn {scalar_t__ src_reg; scalar_t__ off; scalar_t__ imm; scalar_t__ dst_reg; int code; } ;


 scalar_t__ BPF_ALU64 ;
 scalar_t__ BPF_ARSH ;
 scalar_t__ BPF_CLASS (int ) ;
 scalar_t__ BPF_DIV ;
 scalar_t__ BPF_END ;
 scalar_t__ BPF_K ;
 scalar_t__ BPF_LSH ;
 scalar_t__ BPF_MOD ;
 scalar_t__ BPF_MOV ;
 scalar_t__ BPF_NEG ;
 scalar_t__ BPF_OP (int ) ;
 scalar_t__ BPF_REG_0 ;
 scalar_t__ BPF_RSH ;
 scalar_t__ BPF_SRC (int ) ;
 scalar_t__ BPF_X ;
 scalar_t__ DEF_NOT_SUBREG ;
 int DST_OP ;
 int DST_OP_NO_MARK ;
 int EACCES ;
 int EINVAL ;
 int REG_LIVE_WRITTEN ;
 scalar_t__ SCALAR_VALUE ;
 int SRC_OP ;
 int __mark_reg_known (struct bpf_reg_state*,scalar_t__) ;
 int adjust_reg_min_max_vals (struct bpf_verifier_env*,struct bpf_insn*) ;
 int check_reg_arg (struct bpf_verifier_env*,scalar_t__,int ) ;
 int coerce_reg_to_size (struct bpf_reg_state*,int) ;
 struct bpf_reg_state* cur_regs (struct bpf_verifier_env*) ;
 scalar_t__ is_pointer_value (struct bpf_verifier_env*,scalar_t__) ;
 int mark_reg_unknown (struct bpf_verifier_env*,struct bpf_reg_state*,scalar_t__) ;
 int verbose (struct bpf_verifier_env*,char*,...) ;

__attribute__((used)) static int check_alu_op(struct bpf_verifier_env *env, struct bpf_insn *insn)
{
 struct bpf_reg_state *regs = cur_regs(env);
 u8 opcode = BPF_OP(insn->code);
 int err;

 if (opcode == BPF_END || opcode == BPF_NEG) {
  if (opcode == BPF_NEG) {
   if (BPF_SRC(insn->code) != 0 ||
       insn->src_reg != BPF_REG_0 ||
       insn->off != 0 || insn->imm != 0) {
    verbose(env, "BPF_NEG uses reserved fields\n");
    return -EINVAL;
   }
  } else {
   if (insn->src_reg != BPF_REG_0 || insn->off != 0 ||
       (insn->imm != 16 && insn->imm != 32 && insn->imm != 64) ||
       BPF_CLASS(insn->code) == BPF_ALU64) {
    verbose(env, "BPF_END uses reserved fields\n");
    return -EINVAL;
   }
  }


  err = check_reg_arg(env, insn->dst_reg, SRC_OP);
  if (err)
   return err;

  if (is_pointer_value(env, insn->dst_reg)) {
   verbose(env, "R%d pointer arithmetic prohibited\n",
    insn->dst_reg);
   return -EACCES;
  }


  err = check_reg_arg(env, insn->dst_reg, DST_OP);
  if (err)
   return err;

 } else if (opcode == BPF_MOV) {

  if (BPF_SRC(insn->code) == BPF_X) {
   if (insn->imm != 0 || insn->off != 0) {
    verbose(env, "BPF_MOV uses reserved fields\n");
    return -EINVAL;
   }


   err = check_reg_arg(env, insn->src_reg, SRC_OP);
   if (err)
    return err;
  } else {
   if (insn->src_reg != BPF_REG_0 || insn->off != 0) {
    verbose(env, "BPF_MOV uses reserved fields\n");
    return -EINVAL;
   }
  }


  err = check_reg_arg(env, insn->dst_reg, DST_OP_NO_MARK);
  if (err)
   return err;

  if (BPF_SRC(insn->code) == BPF_X) {
   struct bpf_reg_state *src_reg = regs + insn->src_reg;
   struct bpf_reg_state *dst_reg = regs + insn->dst_reg;

   if (BPF_CLASS(insn->code) == BPF_ALU64) {



    *dst_reg = *src_reg;
    dst_reg->live |= REG_LIVE_WRITTEN;
    dst_reg->subreg_def = DEF_NOT_SUBREG;
   } else {

    if (is_pointer_value(env, insn->src_reg)) {
     verbose(env,
      "R%d partial copy of pointer\n",
      insn->src_reg);
     return -EACCES;
    } else if (src_reg->type == SCALAR_VALUE) {
     *dst_reg = *src_reg;
     dst_reg->live |= REG_LIVE_WRITTEN;
     dst_reg->subreg_def = env->insn_idx + 1;
    } else {
     mark_reg_unknown(env, regs,
        insn->dst_reg);
    }
    coerce_reg_to_size(dst_reg, 4);
   }
  } else {




   mark_reg_unknown(env, regs, insn->dst_reg);
   regs[insn->dst_reg].type = SCALAR_VALUE;
   if (BPF_CLASS(insn->code) == BPF_ALU64) {
    __mark_reg_known(regs + insn->dst_reg,
       insn->imm);
   } else {
    __mark_reg_known(regs + insn->dst_reg,
       (u32)insn->imm);
   }
  }

 } else if (opcode > BPF_END) {
  verbose(env, "invalid BPF_ALU opcode %x\n", opcode);
  return -EINVAL;

 } else {

  if (BPF_SRC(insn->code) == BPF_X) {
   if (insn->imm != 0 || insn->off != 0) {
    verbose(env, "BPF_ALU uses reserved fields\n");
    return -EINVAL;
   }

   err = check_reg_arg(env, insn->src_reg, SRC_OP);
   if (err)
    return err;
  } else {
   if (insn->src_reg != BPF_REG_0 || insn->off != 0) {
    verbose(env, "BPF_ALU uses reserved fields\n");
    return -EINVAL;
   }
  }


  err = check_reg_arg(env, insn->dst_reg, SRC_OP);
  if (err)
   return err;

  if ((opcode == BPF_MOD || opcode == BPF_DIV) &&
      BPF_SRC(insn->code) == BPF_K && insn->imm == 0) {
   verbose(env, "div by zero\n");
   return -EINVAL;
  }

  if ((opcode == BPF_LSH || opcode == BPF_RSH ||
       opcode == BPF_ARSH) && BPF_SRC(insn->code) == BPF_K) {
   int size = BPF_CLASS(insn->code) == BPF_ALU64 ? 64 : 32;

   if (insn->imm < 0 || insn->imm >= size) {
    verbose(env, "invalid shift %d\n", insn->imm);
    return -EINVAL;
   }
  }


  err = check_reg_arg(env, insn->dst_reg, DST_OP_NO_MARK);
  if (err)
   return err;

  return adjust_reg_min_max_vals(env, insn);
 }

 return 0;
}
