
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn {int dst_reg; int imm; int code; } ;
typedef int (* bpf_insn_print_t ) (void*,char*,int ,int ,char*,int ,int ) ;


 scalar_t__ BPF_SRC (int ) ;
 scalar_t__ BPF_TO_BE ;

__attribute__((used)) static void print_bpf_end_insn(bpf_insn_print_t verbose,
          void *private_data,
          const struct bpf_insn *insn)
{
 verbose(private_data, "(%02x) r%d = %s%d r%d\n",
  insn->code, insn->dst_reg,
  BPF_SRC(insn->code) == BPF_TO_BE ? "be" : "le",
  insn->imm, insn->dst_reg);
}
