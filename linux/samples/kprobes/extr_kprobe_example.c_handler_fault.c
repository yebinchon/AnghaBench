
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct kprobe {int addr; } ;


 int pr_info (char*,int ,int) ;

__attribute__((used)) static int handler_fault(struct kprobe *p, struct pt_regs *regs, int trapnr)
{
 pr_info("fault_handler: p->addr = 0x%p, trap #%dn", p->addr, trapnr);

 return 0;
}
