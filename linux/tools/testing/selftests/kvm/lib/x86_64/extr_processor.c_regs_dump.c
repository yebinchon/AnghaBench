
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uint8_t ;
struct kvm_regs {int rflags; int rip; int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; int rbp; int rsp; int rdi; int rsi; int rdx; int rcx; int rbx; int rax; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*,char*,int ,int ,...) ;

void regs_dump(FILE *stream, struct kvm_regs *regs,
        uint8_t indent)
{
 fprintf(stream, "%*srax: 0x%.16llx rbx: 0x%.16llx "
  "rcx: 0x%.16llx rdx: 0x%.16llx\n",
  indent, "",
  regs->rax, regs->rbx, regs->rcx, regs->rdx);
 fprintf(stream, "%*srsi: 0x%.16llx rdi: 0x%.16llx "
  "rsp: 0x%.16llx rbp: 0x%.16llx\n",
  indent, "",
  regs->rsi, regs->rdi, regs->rsp, regs->rbp);
 fprintf(stream, "%*sr8:  0x%.16llx r9:  0x%.16llx "
  "r10: 0x%.16llx r11: 0x%.16llx\n",
  indent, "",
  regs->r8, regs->r9, regs->r10, regs->r11);
 fprintf(stream, "%*sr12: 0x%.16llx r13: 0x%.16llx "
  "r14: 0x%.16llx r15: 0x%.16llx\n",
  indent, "",
  regs->r12, regs->r13, regs->r14, regs->r15);
 fprintf(stream, "%*srip: 0x%.16llx rfl: 0x%.16llx\n",
  indent, "",
  regs->rip, regs->rflags);
}
