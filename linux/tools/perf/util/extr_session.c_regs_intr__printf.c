
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regs_dump {scalar_t__ regs; } ;
struct perf_sample {struct regs_dump intr_regs; } ;


 int regs__printf (char*,struct regs_dump*) ;

__attribute__((used)) static void regs_intr__printf(struct perf_sample *sample)
{
 struct regs_dump *intr_regs = &sample->intr_regs;

 if (intr_regs->regs)
  regs__printf("intr", intr_regs);
}
