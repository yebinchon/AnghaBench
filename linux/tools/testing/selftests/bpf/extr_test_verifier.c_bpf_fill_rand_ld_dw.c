
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct bpf_test {int retval; int prog_len; struct bpf_insn* fill_insns; } ;
struct bpf_insn {int dummy; } ;


 struct bpf_insn BPF_ALU64_IMM (int ,int ,int) ;
 struct bpf_insn BPF_ALU64_REG (int ,int ,int ) ;
 struct bpf_insn BPF_EXIT_INSN () ;
 struct bpf_insn BPF_LD_IMM64 (int ,int) ;
 struct bpf_insn BPF_MOV32_IMM (int ,int ) ;
 struct bpf_insn BPF_MOV64_REG (int ,int ) ;
 int BPF_REG_0 ;
 int BPF_REG_1 ;
 int BPF_RSH ;
 int BPF_XOR ;
 int bpf_semi_rand_get () ;

__attribute__((used)) static void bpf_fill_rand_ld_dw(struct bpf_test *self)
{
 struct bpf_insn *insn = self->fill_insns;
 uint64_t res = 0;
 int i = 0;

 insn[i++] = BPF_MOV32_IMM(BPF_REG_0, 0);
 while (i < self->retval) {
  uint64_t val = bpf_semi_rand_get();
  struct bpf_insn tmp[2] = { BPF_LD_IMM64(BPF_REG_1, val) };

  res ^= val;
  insn[i++] = tmp[0];
  insn[i++] = tmp[1];
  insn[i++] = BPF_ALU64_REG(BPF_XOR, BPF_REG_0, BPF_REG_1);
 }
 insn[i++] = BPF_MOV64_REG(BPF_REG_1, BPF_REG_0);
 insn[i++] = BPF_ALU64_IMM(BPF_RSH, BPF_REG_1, 32);
 insn[i++] = BPF_ALU64_REG(BPF_XOR, BPF_REG_0, BPF_REG_1);
 insn[i] = BPF_EXIT_INSN();
 self->prog_len = i + 1;
 res ^= (res >> 32);
 self->retval = (uint32_t)res;
}
