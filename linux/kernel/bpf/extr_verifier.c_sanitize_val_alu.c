
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {int dummy; } ;
struct bpf_insn_aux_data {int dummy; } ;
struct bpf_insn {int dummy; } ;


 int BPF_ALU_NON_POINTER ;
 scalar_t__ can_skip_alu_sanitation (struct bpf_verifier_env*,struct bpf_insn*) ;
 struct bpf_insn_aux_data* cur_aux (struct bpf_verifier_env*) ;
 int update_alu_sanitation_state (struct bpf_insn_aux_data*,int ,int ) ;

__attribute__((used)) static int sanitize_val_alu(struct bpf_verifier_env *env,
       struct bpf_insn *insn)
{
 struct bpf_insn_aux_data *aux = cur_aux(env);

 if (can_skip_alu_sanitation(env, insn))
  return 0;

 return update_alu_sanitation_state(aux, BPF_ALU_NON_POINTER, 0);
}
