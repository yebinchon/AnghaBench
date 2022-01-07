
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct fetch_insn {int op; unsigned long immediate; scalar_t__ data; int param; } ;


 int EILSEQ ;
 unsigned long FETCH_TOKEN_COMM ;
 unsigned long get_user_stack_nth (struct pt_regs*,int ) ;
 int process_fetch_insn_bottom (struct fetch_insn*,unsigned long,void*,void*) ;
 unsigned long regs_get_register (struct pt_regs*,int ) ;
 unsigned long regs_return_value (struct pt_regs*) ;
 unsigned long translate_user_vaddr (unsigned long) ;
 unsigned long user_stack_pointer (struct pt_regs*) ;

__attribute__((used)) static int
process_fetch_insn(struct fetch_insn *code, struct pt_regs *regs, void *dest,
     void *base)
{
 unsigned long val;


 switch (code->op) {
 case 131:
  val = regs_get_register(regs, code->param);
  break;
 case 129:
  val = get_user_stack_nth(regs, code->param);
  break;
 case 128:
  val = user_stack_pointer(regs);
  break;
 case 130:
  val = regs_return_value(regs);
  break;
 case 132:
  val = code->immediate;
  break;
 case 135:
  val = FETCH_TOKEN_COMM;
  break;
 case 134:
  val = (unsigned long)code->data;
  break;
 case 133:
  val = translate_user_vaddr(code->immediate);
  break;
 default:
  return -EILSEQ;
 }
 code++;

 return process_fetch_insn_bottom(code, val, dest, base);
}
