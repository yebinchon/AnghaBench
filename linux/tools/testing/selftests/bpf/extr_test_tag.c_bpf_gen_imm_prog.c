
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_ALU64_IMM (int ,int,int ) ;
 int BPF_EXIT_INSN () ;
 int BPF_MOV ;
 int BPF_REG_10 ;
 int * prog ;
 int rand () ;
 int srand (int ) ;
 int time (int *) ;

__attribute__((used)) static void bpf_gen_imm_prog(unsigned int insns, int fd_map)
{
 int i;

 srand(time(((void*)0)));
 for (i = 0; i < insns; i++)
  prog[i] = BPF_ALU64_IMM(BPF_MOV, i % BPF_REG_10, rand());
 prog[i - 1] = BPF_EXIT_INSN();
}
