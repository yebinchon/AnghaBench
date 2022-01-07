
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {long flags; long msr; long cp0_status; scalar_t__ pstate; } ;
struct kprobe {int addr; int symbol_name; } ;


 int pr_info (char*,int ,int ,long) ;

__attribute__((used)) static void handler_post(struct kprobe *p, struct pt_regs *regs,
    unsigned long flags)
{
}
