
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long addr; } ;
struct pt_regs {long ip; long flags; long nip; long msr; long cp0_epc; long cp0_status; TYPE_1__ psw; scalar_t__ pstate; scalar_t__ pc; } ;
struct kprobe {int addr; int symbol_name; } ;


 int pr_info (char*,int ,int ,long,long) ;

__attribute__((used)) static int handler_pre(struct kprobe *p, struct pt_regs *regs)
{
 return 0;
}
