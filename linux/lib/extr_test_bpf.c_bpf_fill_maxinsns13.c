
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
 int BPF_ALU ;
 int BPF_B ;
 int BPF_IMM ;
 int BPF_LD ;
 int BPF_LDX ;
 unsigned int BPF_MAXINSNS ;
 int BPF_MSH ;
 int BPF_RET ;
 int BPF_X ;
 int BPF_XOR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct sock_filter __BPF_STMT (int,int) ;
 struct sock_filter* kmalloc_array (unsigned int,int,int ) ;

__attribute__((used)) static int bpf_fill_maxinsns13(struct bpf_test *self)
{
 unsigned int len = BPF_MAXINSNS;
 struct sock_filter *insn;
 int i = 0;

 insn = kmalloc_array(len, sizeof(*insn), GFP_KERNEL);
 if (!insn)
  return -ENOMEM;

 for (i = 0; i < len - 3; i++)
  insn[i] = __BPF_STMT(BPF_LDX | BPF_B | BPF_MSH, 0);

 insn[len - 3] = __BPF_STMT(BPF_LD | BPF_IMM, 0xabababab);
 insn[len - 2] = __BPF_STMT(BPF_ALU | BPF_XOR | BPF_X, 0);
 insn[len - 1] = __BPF_STMT(BPF_RET | BPF_A, 0);

 self->u.ptr.insns = insn;
 self->u.ptr.len = len;

 return 0;
}
