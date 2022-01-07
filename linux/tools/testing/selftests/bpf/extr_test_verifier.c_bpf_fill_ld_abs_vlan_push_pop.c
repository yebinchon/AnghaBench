
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_test {unsigned int prog_len; struct bpf_insn* fill_insns; } ;
struct bpf_insn {int dummy; } ;


 struct bpf_insn BPF_ALU64_IMM (int ,int ,int) ;
 int BPF_B ;
 int BPF_CALL ;
 struct bpf_insn BPF_EXIT_INSN () ;
 int BPF_FUNC_skb_vlan_pop ;
 int BPF_FUNC_skb_vlan_push ;
 int BPF_JMP ;
 struct bpf_insn BPF_JMP32_IMM (int ,int ,int,unsigned int) ;
 struct bpf_insn BPF_JMP_A (int) ;
 struct bpf_insn BPF_JMP_IMM (int ,int ,int ,unsigned int) ;
 int BPF_JNE ;
 struct bpf_insn BPF_LD_ABS (int ,int ) ;
 int BPF_MOV ;
 struct bpf_insn BPF_MOV32_IMM (int ,int ) ;
 struct bpf_insn BPF_MOV64_IMM (int ,int) ;
 struct bpf_insn BPF_MOV64_REG (int ,int ) ;
 struct bpf_insn BPF_RAW_INSN (int,int ,int ,int ,int ) ;
 int BPF_REG_0 ;
 int BPF_REG_1 ;
 int BPF_REG_2 ;
 int BPF_REG_3 ;
 int BPF_REG_6 ;
 int PUSH_CNT ;

__attribute__((used)) static void bpf_fill_ld_abs_vlan_push_pop(struct bpf_test *self)
{



 unsigned int len = (1 << 15) - 51 * 2 * 5 * 6;
 struct bpf_insn *insn = self->fill_insns;
 int i = 0, j, k = 0;

 insn[i++] = BPF_MOV64_REG(BPF_REG_6, BPF_REG_1);
loop:
 for (j = 0; j < 51; j++) {
  insn[i++] = BPF_LD_ABS(BPF_B, 0);

  insn[i] = BPF_JMP32_IMM(BPF_JNE, BPF_REG_0, 0x34, len - i - 3);
  i++;
  insn[i++] = BPF_MOV64_REG(BPF_REG_1, BPF_REG_6);
  insn[i++] = BPF_MOV64_IMM(BPF_REG_2, 1);
  insn[i++] = BPF_MOV64_IMM(BPF_REG_3, 2);
  insn[i++] = BPF_RAW_INSN(BPF_JMP | BPF_CALL, 0, 0, 0,
      BPF_FUNC_skb_vlan_push),
  insn[i] = BPF_JMP_IMM(BPF_JNE, BPF_REG_0, 0, len - i - 3);
  i++;
 }

 for (j = 0; j < 51; j++) {
  insn[i++] = BPF_LD_ABS(BPF_B, 0);
  insn[i] = BPF_JMP32_IMM(BPF_JNE, BPF_REG_0, 0x34, len - i - 3);
  i++;
  insn[i++] = BPF_MOV64_REG(BPF_REG_1, BPF_REG_6);
  insn[i++] = BPF_RAW_INSN(BPF_JMP | BPF_CALL, 0, 0, 0,
      BPF_FUNC_skb_vlan_pop),
  insn[i] = BPF_JMP_IMM(BPF_JNE, BPF_REG_0, 0, len - i - 3);
  i++;
 }
 if (++k < 5)
  goto loop;

 for (; i < len - 3; i++)
  insn[i] = BPF_ALU64_IMM(BPF_MOV, BPF_REG_0, 0xbef);
 insn[len - 3] = BPF_JMP_A(1);

 insn[len - 2] = BPF_MOV32_IMM(BPF_REG_0, 0);
 insn[len - 1] = BPF_EXIT_INSN();
 self->prog_len = len;
}
