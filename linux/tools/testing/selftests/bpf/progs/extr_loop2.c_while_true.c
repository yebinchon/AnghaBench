
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int PT_REGS_RC (struct pt_regs volatile*) ;

int while_true(volatile struct pt_regs* ctx)
{
 int i = 0;

 while (1) {
  if (PT_REGS_RC(ctx) & 1)
   i += 3;
  else
   i += 7;
  if (i > 40)
   break;
 }

 return i;
}
