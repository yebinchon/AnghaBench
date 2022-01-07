
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct perf_regs {int abi; struct pt_regs* regs; } ;


 int current ;
 int perf_reg_abi (int ) ;

__attribute__((used)) static void perf_sample_regs_intr(struct perf_regs *regs_intr,
      struct pt_regs *regs)
{
 regs_intr->regs = regs;
 regs_intr->abi = perf_reg_abi(current);
}
