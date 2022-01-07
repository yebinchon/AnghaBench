
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regs_dump {scalar_t__ regs; } ;
struct perf_sample {struct regs_dump user_regs; } ;


 int regs__printf (char*,struct regs_dump*) ;

__attribute__((used)) static void regs_user__printf(struct perf_sample *sample)
{
 struct regs_dump *user_regs = &sample->user_regs;

 if (user_regs->regs)
  regs__printf("user", user_regs);
}
