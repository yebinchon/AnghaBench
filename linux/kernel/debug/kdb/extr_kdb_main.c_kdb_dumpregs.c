
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int CONSOLE_LOGLEVEL_MOTORMOUTH ;
 int console_loglevel ;
 int kdb_printf (char*) ;
 int kdb_trap_printk ;
 int show_regs (struct pt_regs*) ;

__attribute__((used)) static void kdb_dumpregs(struct pt_regs *regs)
{
 int old_lvl = console_loglevel;
 console_loglevel = CONSOLE_LOGLEVEL_MOTORMOUTH;
 kdb_trap_printk++;
 show_regs(regs);
 kdb_trap_printk--;
 kdb_printf("\n");
 console_loglevel = old_lvl;
}
