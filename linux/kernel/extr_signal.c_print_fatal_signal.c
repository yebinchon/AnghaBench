
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int ip; } ;


 scalar_t__ get_user (unsigned char,unsigned char*) ;
 int pr_cont (char*,...) ;
 int pr_info (char*,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int show_regs (struct pt_regs*) ;
 struct pt_regs* signal_pt_regs () ;

__attribute__((used)) static void print_fatal_signal(int signr)
{
 struct pt_regs *regs = signal_pt_regs();
 pr_info("potentially unexpected fatal signal %d.\n", signr);
 preempt_disable();
 show_regs(regs);
 preempt_enable();
}
