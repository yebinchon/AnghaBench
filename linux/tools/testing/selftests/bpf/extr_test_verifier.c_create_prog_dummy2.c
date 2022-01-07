
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn {int dummy; } ;
typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;


 int ARRAY_SIZE (struct bpf_insn*) ;
 int BPF_CALL ;
 struct bpf_insn BPF_EXIT_INSN () ;
 int BPF_FUNC_tail_call ;
 int BPF_JMP ;
 struct bpf_insn BPF_LD_MAP_FD (int ,int) ;
 struct bpf_insn BPF_MOV64_IMM (int ,int) ;
 struct bpf_insn BPF_RAW_INSN (int,int ,int ,int ,int ) ;
 int BPF_REG_0 ;
 int BPF_REG_2 ;
 int BPF_REG_3 ;
 int bpf_load_program (int,struct bpf_insn*,int ,char*,int ,int *,int ) ;

__attribute__((used)) static int create_prog_dummy2(enum bpf_prog_type prog_type, int mfd, int idx)
{
 struct bpf_insn prog[] = {
  BPF_MOV64_IMM(BPF_REG_3, idx),
  BPF_LD_MAP_FD(BPF_REG_2, mfd),
  BPF_RAW_INSN(BPF_JMP | BPF_CALL, 0, 0, 0,
        BPF_FUNC_tail_call),
  BPF_MOV64_IMM(BPF_REG_0, 41),
  BPF_EXIT_INSN(),
 };

 return bpf_load_program(prog_type, prog,
    ARRAY_SIZE(prog), "GPL", 0, ((void*)0), 0);
}
