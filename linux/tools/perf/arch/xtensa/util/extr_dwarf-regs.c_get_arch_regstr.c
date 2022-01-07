
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int XTENSA_MAX_REGS ;
 char const** xtensa_regs_table ;

const char *get_arch_regstr(unsigned int n)
{
 return n < XTENSA_MAX_REGS ? xtensa_regs_table[n] : ((void*)0);
}
