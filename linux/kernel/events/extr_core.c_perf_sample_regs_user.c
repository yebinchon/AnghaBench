
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct perf_regs {struct pt_regs* regs; int abi; } ;
struct TYPE_3__ {int flags; } ;


 int PERF_SAMPLE_REGS_ABI_NONE ;
 int PF_KTHREAD ;
 TYPE_1__* current ;
 int perf_get_regs_user (struct perf_regs*,struct pt_regs*,struct pt_regs*) ;
 int perf_reg_abi (TYPE_1__*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static void perf_sample_regs_user(struct perf_regs *regs_user,
      struct pt_regs *regs,
      struct pt_regs *regs_user_copy)
{
 if (user_mode(regs)) {
  regs_user->abi = perf_reg_abi(current);
  regs_user->regs = regs;
 } else if (!(current->flags & PF_KTHREAD)) {
  perf_get_regs_user(regs_user, regs, regs_user_copy);
 } else {
  regs_user->abi = PERF_SAMPLE_REGS_ABI_NONE;
  regs_user->regs = ((void*)0);
 }
}
