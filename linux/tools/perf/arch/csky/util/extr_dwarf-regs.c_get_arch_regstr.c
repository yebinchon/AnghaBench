
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CSKY_MAX_REGS ;
 char const** csky_dwarf_regs_table ;

const char *get_arch_regstr(unsigned int n)
{
 return (n < CSKY_MAX_REGS) ? csky_dwarf_regs_table[n] : ((void*)0);
}
