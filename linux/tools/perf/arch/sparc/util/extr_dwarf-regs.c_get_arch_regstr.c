
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SPARC_MAX_REGS ;
 char const** sparc_regs_table ;

const char *get_arch_regstr(unsigned int n)
{
 return (n < SPARC_MAX_REGS) ? sparc_regs_table[n] : ((void*)0);
}
