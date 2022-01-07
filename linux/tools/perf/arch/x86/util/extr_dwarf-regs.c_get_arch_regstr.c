
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 unsigned int ARCH_MAX_REGS ;
 TYPE_1__* regoffset_table ;

const char *get_arch_regstr(unsigned int n)
{
 return (n < ARCH_MAX_REGS) ? regoffset_table[n].name : ((void*)0);
}
