
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* nau8825_xtalk_baktab ;

__attribute__((used)) static int nau8825_xtalk_baktab_index_by_reg(unsigned int reg)
{
 int index;

 for (index = 0; index < ARRAY_SIZE(nau8825_xtalk_baktab); index++)
  if (nau8825_xtalk_baktab[index].reg == reg)
   return index;
 return -EINVAL;
}
