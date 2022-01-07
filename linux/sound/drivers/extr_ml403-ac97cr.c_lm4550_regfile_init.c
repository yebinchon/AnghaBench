
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; int def; int value; } ;


 int LM4550_REG_FAKEPROBE ;
 TYPE_1__* lm4550_regfile ;

__attribute__((used)) static void lm4550_regfile_init(void)
{
 int i;
 for (i = 0; i < 64; i++)
  if (lm4550_regfile[i].flag & LM4550_REG_FAKEPROBE)
   lm4550_regfile[i].value = lm4550_regfile[i].def;
}
