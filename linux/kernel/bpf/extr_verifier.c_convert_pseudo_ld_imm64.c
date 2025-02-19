
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_verifier_env {TYPE_1__* prog; } ;
struct bpf_insn {int code; scalar_t__ src_reg; } ;
struct TYPE_2__ {int len; struct bpf_insn* insnsi; } ;


 int BPF_DW ;
 int BPF_IMM ;
 int BPF_LD ;

__attribute__((used)) static void convert_pseudo_ld_imm64(struct bpf_verifier_env *env)
{
 struct bpf_insn *insn = env->prog->insnsi;
 int insn_cnt = env->prog->len;
 int i;

 for (i = 0; i < insn_cnt; i++, insn++)
  if (insn->code == (BPF_LD | BPF_IMM | BPF_DW))
   insn->src_reg = 0;
}
