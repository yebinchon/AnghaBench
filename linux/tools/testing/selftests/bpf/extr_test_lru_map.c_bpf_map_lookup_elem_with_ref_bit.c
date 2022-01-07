
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_load_program_attr {int key_size; int value_size; int max_entries; char* license; int insns_cnt; struct bpf_insn* insns; int prog_type; int map_type; } ;
struct bpf_insn {int imm; } ;
struct bpf_create_map_attr {int key_size; int value_size; int max_entries; char* license; int insns_cnt; struct bpf_insn* insns; int prog_type; int map_type; } ;
typedef int prog ;
typedef int map ;
typedef int data ;
typedef int __u8 ;
typedef int __u32 ;


 int ARRAY_SIZE (struct bpf_insn*) ;
 int BPF_ADD ;
 struct bpf_insn BPF_ALU64_IMM (int ,int ,int) ;
 int BPF_DW ;
 struct bpf_insn BPF_EMIT_CALL (int ) ;
 struct bpf_insn BPF_EXIT_INSN () ;
 int BPF_FUNC_map_lookup_elem ;
 int BPF_JA ;
 int BPF_JEQ ;
 struct bpf_insn BPF_JMP_IMM (int ,int ,int ,int) ;
 struct bpf_insn BPF_LDX_MEM (int ,int ,int ,int ) ;
 struct bpf_insn BPF_LD_IMM64 (int ,unsigned long long) ;
 struct bpf_insn BPF_LD_MAP_FD (int ,int) ;
 struct bpf_insn BPF_LD_MAP_VALUE (int ,int ,int ) ;
 int BPF_MAP_TYPE_ARRAY ;
 struct bpf_insn BPF_MOV64_IMM (int ,int) ;
 struct bpf_insn BPF_MOV64_REG (int ,int ) ;
 int BPF_PROG_TYPE_SCHED_CLS ;
 int BPF_REG_0 ;
 int BPF_REG_1 ;
 int BPF_REG_10 ;
 int BPF_REG_2 ;
 int BPF_REG_3 ;
 int BPF_REG_9 ;
 struct bpf_insn BPF_STX_MEM (int ,int ,int ,int ) ;
 int assert (int) ;
 int bpf_create_map_xattr (struct bpf_load_program_attr*) ;
 int bpf_load_program_xattr (struct bpf_load_program_attr*,int *,int ) ;
 int bpf_map_lookup_elem (int,int*,void*) ;
 int bpf_prog_test_run (int,int,int *,int,int *,int *,int*,int *) ;
 int close (int) ;
 int memset (struct bpf_load_program_attr*,int ,int) ;

__attribute__((used)) static int bpf_map_lookup_elem_with_ref_bit(int fd, unsigned long long key,
         void *value)
{
 struct bpf_load_program_attr prog;
 struct bpf_create_map_attr map;
 struct bpf_insn insns[] = {
  BPF_LD_MAP_VALUE(BPF_REG_9, 0, 0),
  BPF_LD_MAP_FD(BPF_REG_1, fd),
  BPF_LD_IMM64(BPF_REG_3, key),
  BPF_MOV64_REG(BPF_REG_2, BPF_REG_10),
  BPF_ALU64_IMM(BPF_ADD, BPF_REG_2, -8),
  BPF_STX_MEM(BPF_DW, BPF_REG_2, BPF_REG_3, 0),
  BPF_EMIT_CALL(BPF_FUNC_map_lookup_elem),
  BPF_JMP_IMM(BPF_JEQ, BPF_REG_0, 0, 4),
  BPF_LDX_MEM(BPF_DW, BPF_REG_1, BPF_REG_0, 0),
  BPF_STX_MEM(BPF_DW, BPF_REG_9, BPF_REG_1, 0),
  BPF_MOV64_IMM(BPF_REG_0, 42),
  BPF_JMP_IMM(BPF_JA, 0, 0, 1),
  BPF_MOV64_IMM(BPF_REG_0, 1),
  BPF_EXIT_INSN(),
 };
 __u8 data[64] = {};
 int mfd, pfd, ret, zero = 0;
 __u32 retval = 0;

 memset(&map, 0, sizeof(map));
 map.map_type = BPF_MAP_TYPE_ARRAY;
 map.key_size = sizeof(int);
 map.value_size = sizeof(unsigned long long);
 map.max_entries = 1;

 mfd = bpf_create_map_xattr(&map);
 if (mfd < 0)
  return -1;

 insns[0].imm = mfd;

 memset(&prog, 0, sizeof(prog));
 prog.prog_type = BPF_PROG_TYPE_SCHED_CLS;
 prog.insns = insns;
 prog.insns_cnt = ARRAY_SIZE(insns);
 prog.license = "GPL";

 pfd = bpf_load_program_xattr(&prog, ((void*)0), 0);
 if (pfd < 0) {
  close(mfd);
  return -1;
 }

 ret = bpf_prog_test_run(pfd, 1, data, sizeof(data),
    ((void*)0), ((void*)0), &retval, ((void*)0));
 if (ret < 0 || retval != 42) {
  ret = -1;
 } else {
  assert(!bpf_map_lookup_elem(mfd, &zero, value));
  ret = 0;
 }
 close(pfd);
 close(mfd);
 return ret;
}
