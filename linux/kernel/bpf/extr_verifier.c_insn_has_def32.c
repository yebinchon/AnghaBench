
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {int dummy; } ;
struct bpf_insn {int dst_reg; } ;


 int DST_OP ;
 scalar_t__ insn_no_def (struct bpf_insn*) ;
 int is_reg64 (struct bpf_verifier_env*,struct bpf_insn*,int ,int *,int ) ;

__attribute__((used)) static bool insn_has_def32(struct bpf_verifier_env *env, struct bpf_insn *insn)
{
 if (insn_no_def(insn))
  return 0;

 return !is_reg64(env, insn, insn->dst_reg, ((void*)0), DST_OP);
}
