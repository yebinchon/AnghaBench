
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_verifier_env {TYPE_1__* prog; struct bpf_insn_aux_data* insn_aux_data; } ;
struct bpf_insn_aux_data {int seen; } ;
struct TYPE_2__ {int len; } ;


 int verifier_remove_insns (struct bpf_verifier_env*,int,int) ;

__attribute__((used)) static int opt_remove_dead_code(struct bpf_verifier_env *env)
{
 struct bpf_insn_aux_data *aux_data = env->insn_aux_data;
 int insn_cnt = env->prog->len;
 int i, err;

 for (i = 0; i < insn_cnt; i++) {
  int j;

  j = 0;
  while (i + j < insn_cnt && !aux_data[i + j].seen)
   j++;
  if (!j)
   continue;

  err = verifier_remove_insns(env, i, j);
  if (err)
   return err;
  insn_cnt = env->prog->len;
 }

 return 0;
}
