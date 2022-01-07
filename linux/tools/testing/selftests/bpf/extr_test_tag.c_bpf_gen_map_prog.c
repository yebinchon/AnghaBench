
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct bpf_insn {int dummy; } ;


 int BPF_ALU64_IMM (int ,int,int) ;
 int BPF_EXIT_INSN () ;
 struct bpf_insn BPF_LD_MAP_FD (int,int) ;
 int BPF_MOV ;
 int BPF_REG_10 ;
 int memcpy (int *,struct bpf_insn*,int) ;
 int * prog ;

__attribute__((used)) static void bpf_gen_map_prog(unsigned int insns, int fd_map)
{
 int i, j = 0;

 for (i = 0; i + 1 < insns; i += 2) {
  struct bpf_insn tmp[] = {
   BPF_LD_MAP_FD(j++ % BPF_REG_10, fd_map)
  };

  memcpy(&prog[i], tmp, sizeof(tmp));
 }
 if (insns % 2 == 0)
  prog[insns - 2] = BPF_ALU64_IMM(BPF_MOV, i % BPF_REG_10, 42);
 prog[insns - 1] = BPF_EXIT_INSN();
}
