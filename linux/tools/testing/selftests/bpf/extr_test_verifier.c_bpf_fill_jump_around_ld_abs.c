
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_test {int prog_len; struct bpf_insn* fill_insns; } ;
struct bpf_insn {int dummy; } ;


 int BPF_B ;
 struct bpf_insn BPF_EXIT_INSN () ;
 int BPF_JEQ ;
 struct bpf_insn BPF_JMP_IMM (int ,int ,int,unsigned int) ;
 struct bpf_insn BPF_LD_ABS (int ,int) ;
 struct bpf_insn BPF_MOV64_REG (int ,int ) ;
 int BPF_REG_0 ;
 int BPF_REG_1 ;
 int BPF_REG_6 ;

__attribute__((used)) static void bpf_fill_jump_around_ld_abs(struct bpf_test *self)
{
 struct bpf_insn *insn = self->fill_insns;






 unsigned int len = (1 << 15) / 7;
 int i = 0;

 insn[i++] = BPF_MOV64_REG(BPF_REG_6, BPF_REG_1);
 insn[i++] = BPF_LD_ABS(BPF_B, 0);
 insn[i] = BPF_JMP_IMM(BPF_JEQ, BPF_REG_0, 10, len - i - 2);
 i++;
 while (i < len - 1)
  insn[i++] = BPF_LD_ABS(BPF_B, 1);
 insn[i] = BPF_EXIT_INSN();
 self->prog_len = i + 1;
}
