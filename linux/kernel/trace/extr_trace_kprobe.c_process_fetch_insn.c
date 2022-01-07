
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct fetch_insn {int op; unsigned long immediate; int param; scalar_t__ data; } ;
struct TYPE_2__ {scalar_t__ comm; } ;


 int EILSEQ ;
 TYPE_1__* current ;
 unsigned long kernel_stack_pointer (struct pt_regs*) ;
 int process_fetch_insn_bottom (struct fetch_insn*,unsigned long,void*,void*) ;
 unsigned long regs_get_kernel_argument (struct pt_regs*,int ) ;
 unsigned long regs_get_kernel_stack_nth (struct pt_regs*,int ) ;
 unsigned long regs_get_register (struct pt_regs*,int ) ;
 unsigned long regs_return_value (struct pt_regs*) ;

__attribute__((used)) static int
process_fetch_insn(struct fetch_insn *code, struct pt_regs *regs, void *dest,
     void *base)
{
 unsigned long val;

retry:

 switch (code->op) {
 case 131:
  val = regs_get_register(regs, code->param);
  break;
 case 129:
  val = regs_get_kernel_stack_nth(regs, code->param);
  break;
 case 128:
  val = kernel_stack_pointer(regs);
  break;
 case 130:
  val = regs_return_value(regs);
  break;
 case 132:
  val = code->immediate;
  break;
 case 134:
  val = (unsigned long)current->comm;
  break;
 case 133:
  val = (unsigned long)code->data;
  break;





 case 136:
  code++;
  goto retry;
 default:
  return -EILSEQ;
 }
 code++;

 return process_fetch_insn_bottom(code, val, dest, base);
}
