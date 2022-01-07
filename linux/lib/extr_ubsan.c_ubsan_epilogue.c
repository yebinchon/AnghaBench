
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in_ubsan; } ;


 TYPE_1__* current ;
 int dump_stack () ;
 int pr_err (char*) ;
 int report_lock ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ubsan_epilogue(unsigned long *flags)
{
 dump_stack();
 pr_err("========================================"
  "========================================\n");
 spin_unlock_irqrestore(&report_lock, *flags);
 current->in_ubsan--;
}
