
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
typedef int __u64 ;


 scalar_t__ PT_REGS_RC (struct pt_regs volatile*) ;

int while_true(volatile struct pt_regs* ctx)
{
 __u64 i = 0, sum = 0;
 do {
  i++;
  sum += PT_REGS_RC(ctx);
 } while (i < 0x100000000ULL);
 return sum;
}
