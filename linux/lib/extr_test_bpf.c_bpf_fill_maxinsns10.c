
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

__attribute__((used)) static int bpf_fill_maxinsns10(struct bpf_test *self)
{
 unsigned int len = BPF_MAXINSNS, hlen = len - 2;
 struct bpf_insn *insn;
 int i;

 insn = kmalloc_array(len, sizeof(*insn), GFP_KERNEL);
 if (!insn)
  return -ENOMEM;

 for (i = 0; i < hlen / 2; i++)
  insn[i] = BPF_JMP_IMM(BPF_JA, 0, 0, hlen - 2 - 2 * i);
 for (i = hlen - 1; i > hlen / 2; i--)
  insn[i] = BPF_JMP_IMM(BPF_JA, 0, 0, hlen - 1 - 2 * i);

 insn[hlen / 2] = BPF_JMP_IMM(BPF_JA, 0, 0, hlen / 2 - 1);
 insn[hlen] = BPF_ALU32_IMM(BPF_MOV, R0, 0xabababac);
 insn[hlen + 1] = BPF_EXIT_INSN();

 self->u.ptr.insns = insn;
 self->u.ptr.len = len;

 return 0;
}
