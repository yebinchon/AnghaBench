
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_test {int prog_len; int retval; struct bpf_insn* fill_insns; } ;
struct bpf_insn {int dummy; } ;


 struct bpf_insn BPF_ALU64_IMM (int ,int ,int) ;
 int BPF_CALL ;
 struct bpf_insn BPF_CALL_REL (int) ;
 int BPF_DW ;
 struct bpf_insn BPF_EXIT_INSN () ;
 int BPF_FUNC_get_prandom_u32 ;
 int BPF_JEQ ;
 int BPF_JMP ;
 struct bpf_insn BPF_JMP_IMM (int ,int ,int ,int) ;
 int BPF_MOV ;
 struct bpf_insn BPF_MOV64_REG (int ,int ) ;
 struct bpf_insn BPF_RAW_INSN (int,int ,int ,int ,int ) ;
 int BPF_REG_0 ;
 int BPF_REG_1 ;
 int BPF_REG_10 ;
 int BPF_REG_6 ;
 struct bpf_insn BPF_STX_MEM (int ,int ,int ,int) ;
 int FUNC_NEST ;
 int MAX_JMP_SEQ ;
 int MAX_TEST_INSNS ;
 int bpf_semi_rand_get () ;

__attribute__((used)) static void bpf_fill_scale2(struct bpf_test *self)
{
 struct bpf_insn *insn = self->fill_insns;
 int i = 0, k = 0;


 for (k = 0; k < 7; k++) {
  insn[i++] = BPF_CALL_REL(1);
  insn[i++] = BPF_EXIT_INSN();
 }
 insn[i++] = BPF_MOV64_REG(BPF_REG_6, BPF_REG_1);

 k = 0;
 while (k++ < MAX_JMP_SEQ) {
  insn[i++] = BPF_RAW_INSN(BPF_JMP | BPF_CALL, 0, 0, 0,
      BPF_FUNC_get_prandom_u32);
  insn[i++] = BPF_JMP_IMM(BPF_JEQ, BPF_REG_0, bpf_semi_rand_get(), 2);
  insn[i++] = BPF_MOV64_REG(BPF_REG_1, BPF_REG_10);
  insn[i++] = BPF_STX_MEM(BPF_DW, BPF_REG_1, BPF_REG_6,
     -8 * (k % (64 - 4 * 7) + 1));
 }
 while (i < MAX_TEST_INSNS - MAX_JMP_SEQ * 4)
  insn[i++] = BPF_ALU64_IMM(BPF_MOV, BPF_REG_0, 42);
 insn[i] = BPF_EXIT_INSN();
 self->prog_len = i + 1;
 self->retval = 42;
}
