
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct source_location {int dummy; } ;
struct TYPE_2__ {int in_ubsan; } ;


 TYPE_1__* current ;
 int pr_err (char*) ;
 int print_source_location (char*,struct source_location*) ;
 int report_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;

__attribute__((used)) static void ubsan_prologue(struct source_location *location,
   unsigned long *flags)
{
 current->in_ubsan++;
 spin_lock_irqsave(&report_lock, *flags);

 pr_err("========================================"
  "========================================\n");
 print_source_location("UBSAN: Undefined behaviour in", location);
}
