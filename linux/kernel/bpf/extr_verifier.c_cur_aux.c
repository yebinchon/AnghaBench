
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {size_t insn_idx; struct bpf_insn_aux_data* insn_aux_data; } ;
struct bpf_insn_aux_data {int dummy; } ;



__attribute__((used)) static struct bpf_insn_aux_data *cur_aux(struct bpf_verifier_env *env)
{
 return &env->insn_aux_data[env->insn_idx];
}
