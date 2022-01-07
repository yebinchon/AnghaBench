
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_verifier_env {TYPE_1__* insn_aux_data; } ;
struct bpf_reg_state {int subreg_def; } ;
typedef int s32 ;
struct TYPE_2__ {int zext_dst; } ;


 int DEF_NOT_SUBREG ;

__attribute__((used)) static void mark_insn_zext(struct bpf_verifier_env *env,
      struct bpf_reg_state *reg)
{
 s32 def_idx = reg->subreg_def;

 if (def_idx == DEF_NOT_SUBREG)
  return;

 env->insn_aux_data[def_idx - 1].zext_dst = 1;

 reg->subreg_def = DEF_NOT_SUBREG;
}
