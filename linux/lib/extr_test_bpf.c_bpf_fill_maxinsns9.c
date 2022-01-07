
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int len; struct bpf_insn* insns; } ;
struct TYPE_4__ {TYPE_1__ ptr; } ;
struct bpf_test {TYPE_2__ u; } ;
struct bpf_insn {int dummy; } ;


 struct bpf_insn BPF_ALU32_IMM (int ,int ,int) ;
 struct bpf_insn BPF_EXIT_INSN () ;
 int BPF_JA ;
 struct bpf_insn BPF_JMP_IMM (int ,int ,int ,unsigned int) ;
 unsigned int BPF_MAXINSNS ;
 int BPF_MOV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int R0 ;
 struct bpf_insn* kmalloc_array (unsigned int,int,int ) ;

__attribute__((used)) static int bpf_fill_maxinsns9(struct bpf_test *self)
{
 unsigned int len = BPF_MAXINSNS;
 struct bpf_insn *insn;
 int i;

 insn = kmalloc_array(len, sizeof(*insn), GFP_KERNEL);
 if (!insn)
  return -ENOMEM;

 insn[0] = BPF_JMP_IMM(BPF_JA, 0, 0, len - 2);
 insn[1] = BPF_ALU32_IMM(BPF_MOV, R0, 0xcbababab);
 insn[2] = BPF_EXIT_INSN();

 for (i = 3; i < len - 2; i++)
  insn[i] = BPF_ALU32_IMM(BPF_MOV, R0, 0xfefefefe);

 insn[len - 2] = BPF_EXIT_INSN();
 insn[len - 1] = BPF_JMP_IMM(BPF_JA, 0, 0, -(len - 1));

 self->u.ptr.insns = insn;
 self->u.ptr.len = len;

 return 0;
}
