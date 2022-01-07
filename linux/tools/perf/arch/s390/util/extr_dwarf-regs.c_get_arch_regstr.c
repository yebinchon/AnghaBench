
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** s390_dwarf_regs ;

const char *get_arch_regstr(unsigned int n)
{
 return (n >= ARRAY_SIZE(s390_dwarf_regs)) ? ((void*)0) : s390_dwarf_regs[n];
}
