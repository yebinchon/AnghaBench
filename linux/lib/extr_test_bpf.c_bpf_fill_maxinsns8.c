
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock_filter {int dummy; } ;
struct TYPE_3__ {unsigned int len; struct sock_filter* insns; } ;
struct TYPE_4__ {TYPE_1__ ptr; } ;
struct bpf_test {TYPE_2__ u; } ;


 int BPF_A ;
 int BPF_IMM ;
 int BPF_JGT ;
 int BPF_JMP ;
 int BPF_LD ;
 unsigned int BPF_MAXINSNS ;
 int BPF_RET ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct sock_filter __BPF_JUMP (int,int,int ,int ) ;
 struct sock_filter __BPF_STMT (int,int) ;
 struct sock_filter* kmalloc_array (unsigned int,int,int ) ;

__attribute__((used)) static int bpf_fill_maxinsns8(struct bpf_test *self)
{
 unsigned int len = BPF_MAXINSNS;
 struct sock_filter *insn;
 int i, jmp_off = len - 3;

 insn = kmalloc_array(len, sizeof(*insn), GFP_KERNEL);
 if (!insn)
  return -ENOMEM;

 insn[0] = __BPF_STMT(BPF_LD | BPF_IMM, 0xffffffff);

 for (i = 1; i < len - 1; i++)
  insn[i] = __BPF_JUMP(BPF_JMP | BPF_JGT, 0xffffffff, jmp_off--, 0);

 insn[len - 1] = __BPF_STMT(BPF_RET | BPF_A, 0);

 self->u.ptr.insns = insn;
 self->u.ptr.len = len;

 return 0;
}
