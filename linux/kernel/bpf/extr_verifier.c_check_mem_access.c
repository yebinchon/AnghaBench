
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bpf_verifier_env {scalar_t__ id_gen; } ;
struct TYPE_2__ {scalar_t__ value; } ;
struct bpf_reg_state {int type; TYPE_1__ var_off; int subreg_def; scalar_t__ id; scalar_t__ off; } ;
struct bpf_func_state {int dummy; } ;
typedef enum bpf_reg_type { ____Placeholder_bpf_reg_type } bpf_reg_type ;
typedef enum bpf_access_type { ____Placeholder_bpf_access_type } bpf_access_type ;


 int BPF_READ ;
 int BPF_REG_SIZE ;
 int BPF_WRITE ;
 int DEF_NOT_SUBREG ;
 int EACCES ;
 int PTR_TO_CTX ;
 int PTR_TO_FLOW_KEYS ;
 int PTR_TO_MAP_VALUE ;
 int PTR_TO_STACK ;
 size_t PTR_TO_TP_BUFFER ;
 int SCALAR_VALUE ;
 int bpf_size_to_bytes (int) ;
 int check_ctx_access (struct bpf_verifier_env*,int,int,int,int,int*) ;
 int check_ctx_reg (struct bpf_verifier_env*,struct bpf_reg_state*,int) ;
 int check_flow_keys_access (struct bpf_verifier_env*,int,int) ;
 int check_map_access (struct bpf_verifier_env*,int,int,int,int) ;
 int check_map_access_type (struct bpf_verifier_env*,int,int,int,int) ;
 int check_packet_access (struct bpf_verifier_env*,int,int,int,int) ;
 int check_ptr_alignment (struct bpf_verifier_env*,struct bpf_reg_state*,int,int,int) ;
 int check_sock_access (struct bpf_verifier_env*,int,int,int,int,int) ;
 int check_stack_access (struct bpf_verifier_env*,struct bpf_reg_state*,int,int) ;
 int check_stack_read (struct bpf_verifier_env*,struct bpf_func_state*,int,int,int) ;
 int check_stack_write (struct bpf_verifier_env*,struct bpf_func_state*,int,int,int,int) ;
 int check_tp_buffer_access (struct bpf_verifier_env*,struct bpf_reg_state*,int,int,int) ;
 int coerce_reg_to_size (struct bpf_reg_state*,int) ;
 struct bpf_reg_state* cur_regs (struct bpf_verifier_env*) ;
 struct bpf_func_state* func (struct bpf_verifier_env*,struct bpf_reg_state*) ;
 scalar_t__ is_pointer_value (struct bpf_verifier_env*,int) ;
 int mark_reg_known_zero (struct bpf_verifier_env*,struct bpf_reg_state*,int) ;
 int mark_reg_unknown (struct bpf_verifier_env*,struct bpf_reg_state*,int) ;
 int may_access_direct_pkt_data (struct bpf_verifier_env*,int *,int) ;
 scalar_t__ reg_is_pkt_pointer (struct bpf_reg_state*) ;
 scalar_t__ reg_type_may_be_null (int) ;
 int * reg_type_str ;
 scalar_t__ type_is_sk_pointer (int) ;
 int update_stack_depth (struct bpf_verifier_env*,struct bpf_func_state*,int) ;
 int verbose (struct bpf_verifier_env*,char*,...) ;

__attribute__((used)) static int check_mem_access(struct bpf_verifier_env *env, int insn_idx, u32 regno,
       int off, int bpf_size, enum bpf_access_type t,
       int value_regno, bool strict_alignment_once)
{
 struct bpf_reg_state *regs = cur_regs(env);
 struct bpf_reg_state *reg = regs + regno;
 struct bpf_func_state *state;
 int size, err = 0;

 size = bpf_size_to_bytes(bpf_size);
 if (size < 0)
  return size;


 err = check_ptr_alignment(env, reg, off, size, strict_alignment_once);
 if (err)
  return err;


 off += reg->off;

 if (reg->type == PTR_TO_MAP_VALUE) {
  if (t == BPF_WRITE && value_regno >= 0 &&
      is_pointer_value(env, value_regno)) {
   verbose(env, "R%d leaks addr into map\n", value_regno);
   return -EACCES;
  }
  err = check_map_access_type(env, regno, off, size, t);
  if (err)
   return err;
  err = check_map_access(env, regno, off, size, 0);
  if (!err && t == BPF_READ && value_regno >= 0)
   mark_reg_unknown(env, regs, value_regno);

 } else if (reg->type == PTR_TO_CTX) {
  enum bpf_reg_type reg_type = SCALAR_VALUE;

  if (t == BPF_WRITE && value_regno >= 0 &&
      is_pointer_value(env, value_regno)) {
   verbose(env, "R%d leaks addr into ctx\n", value_regno);
   return -EACCES;
  }

  err = check_ctx_reg(env, reg, regno);
  if (err < 0)
   return err;

  err = check_ctx_access(env, insn_idx, off, size, t, &reg_type);
  if (!err && t == BPF_READ && value_regno >= 0) {




   if (reg_type == SCALAR_VALUE) {
    mark_reg_unknown(env, regs, value_regno);
   } else {
    mark_reg_known_zero(env, regs,
          value_regno);
    if (reg_type_may_be_null(reg_type))
     regs[value_regno].id = ++env->id_gen;





    regs[value_regno].subreg_def = DEF_NOT_SUBREG;
   }
   regs[value_regno].type = reg_type;
  }

 } else if (reg->type == PTR_TO_STACK) {
  off += reg->var_off.value;
  err = check_stack_access(env, reg, off, size);
  if (err)
   return err;

  state = func(env, reg);
  err = update_stack_depth(env, state, off);
  if (err)
   return err;

  if (t == BPF_WRITE)
   err = check_stack_write(env, state, off, size,
      value_regno, insn_idx);
  else
   err = check_stack_read(env, state, off, size,
            value_regno);
 } else if (reg_is_pkt_pointer(reg)) {
  if (t == BPF_WRITE && !may_access_direct_pkt_data(env, ((void*)0), t)) {
   verbose(env, "cannot write into packet\n");
   return -EACCES;
  }
  if (t == BPF_WRITE && value_regno >= 0 &&
      is_pointer_value(env, value_regno)) {
   verbose(env, "R%d leaks addr into packet\n",
    value_regno);
   return -EACCES;
  }
  err = check_packet_access(env, regno, off, size, 0);
  if (!err && t == BPF_READ && value_regno >= 0)
   mark_reg_unknown(env, regs, value_regno);
 } else if (reg->type == PTR_TO_FLOW_KEYS) {
  if (t == BPF_WRITE && value_regno >= 0 &&
      is_pointer_value(env, value_regno)) {
   verbose(env, "R%d leaks addr into flow keys\n",
    value_regno);
   return -EACCES;
  }

  err = check_flow_keys_access(env, off, size);
  if (!err && t == BPF_READ && value_regno >= 0)
   mark_reg_unknown(env, regs, value_regno);
 } else if (type_is_sk_pointer(reg->type)) {
  if (t == BPF_WRITE) {
   verbose(env, "R%d cannot write into %s\n",
    regno, reg_type_str[reg->type]);
   return -EACCES;
  }
  err = check_sock_access(env, insn_idx, regno, off, size, t);
  if (!err && value_regno >= 0)
   mark_reg_unknown(env, regs, value_regno);
 } else if (reg->type == PTR_TO_TP_BUFFER) {
  err = check_tp_buffer_access(env, reg, regno, off, size);
  if (!err && t == BPF_READ && value_regno >= 0)
   mark_reg_unknown(env, regs, value_regno);
 } else {
  verbose(env, "R%d invalid mem access '%s'\n", regno,
   reg_type_str[reg->type]);
  return -EACCES;
 }

 if (!err && size < BPF_REG_SIZE && value_regno >= 0 && t == BPF_READ &&
     regs[value_regno].type == SCALAR_VALUE) {

  coerce_reg_to_size(&regs[value_regno], size);
 }
 return err;
}
