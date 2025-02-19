
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct bpf_verifier_state {size_t curframe; TYPE_3__** frame; } ;
struct TYPE_4__ {int level; } ;
struct bpf_verifier_env {TYPE_1__ log; struct bpf_verifier_state* cur_state; } ;
struct TYPE_5__ {int value; } ;
struct bpf_reg_state {scalar_t__ type; TYPE_2__ var_off; } ;
struct bpf_insn {size_t src_reg; size_t dst_reg; int imm; int code; scalar_t__ off; } ;
struct TYPE_6__ {struct bpf_reg_state* regs; } ;


 scalar_t__ BPF_CLASS (int ) ;
 scalar_t__ BPF_JA ;
 scalar_t__ BPF_JEQ ;
 scalar_t__ BPF_JMP32 ;
 scalar_t__ BPF_JNE ;
 scalar_t__ BPF_JSLE ;
 scalar_t__ BPF_K ;
 int BPF_LOG_LEVEL ;
 scalar_t__ BPF_OP (int ) ;
 size_t BPF_REG_0 ;
 scalar_t__ BPF_SRC (int ) ;
 scalar_t__ BPF_X ;
 int EACCES ;
 int EFAULT ;
 int EINVAL ;
 scalar_t__ SCALAR_VALUE ;
 int SRC_OP ;
 int check_reg_arg (struct bpf_verifier_env*,size_t,int ) ;
 int coerce_reg_to_size (struct bpf_reg_state*,int) ;
 int is_branch_taken (struct bpf_reg_state*,int ,scalar_t__,int) ;
 scalar_t__ is_pointer_value (struct bpf_verifier_env*,size_t) ;
 int mark_chain_precision (struct bpf_verifier_env*,size_t) ;
 int mark_ptr_or_null_regs (struct bpf_verifier_state*,size_t,int) ;
 int print_verifier_state (struct bpf_verifier_env*,TYPE_3__*) ;
 struct bpf_verifier_state* push_stack (struct bpf_verifier_env*,scalar_t__,int,int) ;
 int reg_combine_min_max (struct bpf_reg_state*,struct bpf_reg_state*,struct bpf_reg_state*,struct bpf_reg_state*,scalar_t__) ;
 int reg_set_min_max (struct bpf_reg_state*,struct bpf_reg_state*,int ,scalar_t__,int) ;
 int reg_set_min_max_inv (struct bpf_reg_state*,struct bpf_reg_state*,int ,scalar_t__,int) ;
 scalar_t__ reg_type_may_be_null (scalar_t__) ;
 scalar_t__ tnum_is_const (TYPE_2__) ;
 int try_match_pkt_pointers (struct bpf_insn*,struct bpf_reg_state*,struct bpf_reg_state*,struct bpf_verifier_state*,struct bpf_verifier_state*) ;
 int verbose (struct bpf_verifier_env*,char*,...) ;

__attribute__((used)) static int check_cond_jmp_op(struct bpf_verifier_env *env,
        struct bpf_insn *insn, int *insn_idx)
{
 struct bpf_verifier_state *this_branch = env->cur_state;
 struct bpf_verifier_state *other_branch;
 struct bpf_reg_state *regs = this_branch->frame[this_branch->curframe]->regs;
 struct bpf_reg_state *dst_reg, *other_branch_regs, *src_reg = ((void*)0);
 u8 opcode = BPF_OP(insn->code);
 bool is_jmp32;
 int pred = -1;
 int err;


 if (opcode == BPF_JA || opcode > BPF_JSLE) {
  verbose(env, "invalid BPF_JMP/JMP32 opcode %x\n", opcode);
  return -EINVAL;
 }

 if (BPF_SRC(insn->code) == BPF_X) {
  if (insn->imm != 0) {
   verbose(env, "BPF_JMP/JMP32 uses reserved fields\n");
   return -EINVAL;
  }


  err = check_reg_arg(env, insn->src_reg, SRC_OP);
  if (err)
   return err;

  if (is_pointer_value(env, insn->src_reg)) {
   verbose(env, "R%d pointer comparison prohibited\n",
    insn->src_reg);
   return -EACCES;
  }
  src_reg = &regs[insn->src_reg];
 } else {
  if (insn->src_reg != BPF_REG_0) {
   verbose(env, "BPF_JMP/JMP32 uses reserved fields\n");
   return -EINVAL;
  }
 }


 err = check_reg_arg(env, insn->dst_reg, SRC_OP);
 if (err)
  return err;

 dst_reg = &regs[insn->dst_reg];
 is_jmp32 = BPF_CLASS(insn->code) == BPF_JMP32;

 if (BPF_SRC(insn->code) == BPF_K)
  pred = is_branch_taken(dst_reg, insn->imm,
           opcode, is_jmp32);
 else if (src_reg->type == SCALAR_VALUE &&
   tnum_is_const(src_reg->var_off))
  pred = is_branch_taken(dst_reg, src_reg->var_off.value,
           opcode, is_jmp32);
 if (pred >= 0) {
  err = mark_chain_precision(env, insn->dst_reg);
  if (BPF_SRC(insn->code) == BPF_X && !err)
   err = mark_chain_precision(env, insn->src_reg);
  if (err)
   return err;
 }
 if (pred == 1) {

  *insn_idx += insn->off;
  return 0;
 } else if (pred == 0) {



  return 0;
 }

 other_branch = push_stack(env, *insn_idx + insn->off + 1, *insn_idx,
      0);
 if (!other_branch)
  return -EFAULT;
 other_branch_regs = other_branch->frame[other_branch->curframe]->regs;
 if (BPF_SRC(insn->code) == BPF_X) {
  struct bpf_reg_state *src_reg = &regs[insn->src_reg];
  struct bpf_reg_state lo_reg0 = *dst_reg;
  struct bpf_reg_state lo_reg1 = *src_reg;
  struct bpf_reg_state *src_lo, *dst_lo;

  dst_lo = &lo_reg0;
  src_lo = &lo_reg1;
  coerce_reg_to_size(dst_lo, 4);
  coerce_reg_to_size(src_lo, 4);

  if (dst_reg->type == SCALAR_VALUE &&
      src_reg->type == SCALAR_VALUE) {
   if (tnum_is_const(src_reg->var_off) ||
       (is_jmp32 && tnum_is_const(src_lo->var_off)))
    reg_set_min_max(&other_branch_regs[insn->dst_reg],
      dst_reg,
      is_jmp32
      ? src_lo->var_off.value
      : src_reg->var_off.value,
      opcode, is_jmp32);
   else if (tnum_is_const(dst_reg->var_off) ||
     (is_jmp32 && tnum_is_const(dst_lo->var_off)))
    reg_set_min_max_inv(&other_branch_regs[insn->src_reg],
          src_reg,
          is_jmp32
          ? dst_lo->var_off.value
          : dst_reg->var_off.value,
          opcode, is_jmp32);
   else if (!is_jmp32 &&
     (opcode == BPF_JEQ || opcode == BPF_JNE))

    reg_combine_min_max(&other_branch_regs[insn->src_reg],
          &other_branch_regs[insn->dst_reg],
          src_reg, dst_reg, opcode);
  }
 } else if (dst_reg->type == SCALAR_VALUE) {
  reg_set_min_max(&other_branch_regs[insn->dst_reg],
     dst_reg, insn->imm, opcode, is_jmp32);
 }





 if (!is_jmp32 && BPF_SRC(insn->code) == BPF_K &&
     insn->imm == 0 && (opcode == BPF_JEQ || opcode == BPF_JNE) &&
     reg_type_may_be_null(dst_reg->type)) {



  mark_ptr_or_null_regs(this_branch, insn->dst_reg,
          opcode == BPF_JNE);
  mark_ptr_or_null_regs(other_branch, insn->dst_reg,
          opcode == BPF_JEQ);
 } else if (!try_match_pkt_pointers(insn, dst_reg, &regs[insn->src_reg],
        this_branch, other_branch) &&
     is_pointer_value(env, insn->dst_reg)) {
  verbose(env, "R%d pointer comparison prohibited\n",
   insn->dst_reg);
  return -EACCES;
 }
 if (env->log.level & BPF_LOG_LEVEL)
  print_verifier_state(env, this_branch->frame[this_branch->curframe]);
 return 0;
}
