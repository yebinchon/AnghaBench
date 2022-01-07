
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn_pos {int dummy; } ;


 int BPF_ADD ;
 int BPF_ALU64_IMM (int ,int,long) ;
 int BPF_EMIT_CALL (int ) ;
 int BPF_FUNC_probe_read ;
 int BPF_JMP_IMM (int ,int ,int ,int ) ;
 int BPF_JNE ;
 int BPF_MOV ;
 int BPF_MOV64_REG (int,int) ;
 int BPF_REG_0 ;
 int BPF_REG_ARG1 ;
 int BPF_REG_ARG2 ;
 int BPF_REG_ARG3 ;
 long BPF_REG_SIZE ;
 int JMP_TO_ERROR_CODE ;
 int check_pos (struct bpf_insn_pos*) ;
 int ins (int ,struct bpf_insn_pos*) ;

__attribute__((used)) static int
gen_read_mem(struct bpf_insn_pos *pos,
      int src_base_addr_reg,
      int dst_addr_reg,
      long offset)
{

 if (src_base_addr_reg != BPF_REG_ARG3)
  ins(BPF_MOV64_REG(BPF_REG_ARG3, src_base_addr_reg), pos);

 if (offset)
  ins(BPF_ALU64_IMM(BPF_ADD, BPF_REG_ARG3, offset), pos);


 ins(BPF_ALU64_IMM(BPF_MOV, BPF_REG_ARG2, BPF_REG_SIZE), pos);


 if (dst_addr_reg != BPF_REG_ARG1)
  ins(BPF_MOV64_REG(BPF_REG_ARG1, dst_addr_reg), pos);


 ins(BPF_EMIT_CALL(BPF_FUNC_probe_read), pos);





 ins(BPF_JMP_IMM(BPF_JNE, BPF_REG_0, 0, JMP_TO_ERROR_CODE),
     pos);

 return check_pos(pos);
}
