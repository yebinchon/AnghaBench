
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int trap ;
struct bpf_verifier_env {TYPE_1__* prog; struct bpf_insn_aux_data* insn_aux_data; } ;
struct bpf_insn_aux_data {scalar_t__ seen; } ;
struct bpf_insn {int dummy; } ;
struct TYPE_2__ {int len; struct bpf_insn* insnsi; } ;


 int BPF_JA ;
 struct bpf_insn BPF_JMP_IMM (int ,int ,int ,int) ;
 int memcpy (struct bpf_insn*,struct bpf_insn*,int) ;

__attribute__((used)) static void sanitize_dead_code(struct bpf_verifier_env *env)
{
 struct bpf_insn_aux_data *aux_data = env->insn_aux_data;
 struct bpf_insn trap = BPF_JMP_IMM(BPF_JA, 0, 0, -1);
 struct bpf_insn *insn = env->prog->insnsi;
 const int insn_cnt = env->prog->len;
 int i;

 for (i = 0; i < insn_cnt; i++) {
  if (aux_data[i].seen)
   continue;
  memcpy(insn + i, &trap, sizeof(trap));
 }
}
