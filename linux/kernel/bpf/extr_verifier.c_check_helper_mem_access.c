
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {int type; int off; } ;
struct bpf_call_arg_meta {int raw_mode; } ;


 int BPF_READ ;
 int BPF_WRITE ;
 int EACCES ;



 int check_map_access (struct bpf_verifier_env*,int,int ,int,int) ;
 int check_map_access_type (struct bpf_verifier_env*,int,int ,int,int ) ;
 int check_packet_access (struct bpf_verifier_env*,int,int ,int,int) ;
 int check_stack_boundary (struct bpf_verifier_env*,int,int,int,struct bpf_call_arg_meta*) ;
 struct bpf_reg_state* cur_regs (struct bpf_verifier_env*) ;

__attribute__((used)) static int check_helper_mem_access(struct bpf_verifier_env *env, int regno,
       int access_size, bool zero_size_allowed,
       struct bpf_call_arg_meta *meta)
{
 struct bpf_reg_state *regs = cur_regs(env), *reg = &regs[regno];

 switch (reg->type) {
 case 129:
 case 128:
  return check_packet_access(env, regno, reg->off, access_size,
        zero_size_allowed);
 case 130:
  if (check_map_access_type(env, regno, reg->off, access_size,
       meta && meta->raw_mode ? BPF_WRITE :
       BPF_READ))
   return -EACCES;
  return check_map_access(env, regno, reg->off, access_size,
     zero_size_allowed);
 default:
  return check_stack_boundary(env, regno, access_size,
         zero_size_allowed, meta);
 }
}
