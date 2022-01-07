
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* __get_dwarf_regstr (int ,unsigned int) ;
 int aarch64_regstr_tbl ;
 int arm_regstr_tbl ;
 char const* get_arch_regstr (unsigned int) ;
 int powerpc_regstr_tbl ;
 int pr_err (char*,unsigned int) ;
 int s390_regstr_tbl ;
 int sh_regstr_tbl ;
 int sparc_regstr_tbl ;
 int x86_32_regstr_tbl ;
 int x86_64_regstr_tbl ;
 int xtensa_regstr_tbl ;

const char *get_dwarf_regstr(unsigned int n, unsigned int machine)
{
 switch (machine) {
 case 136:
  return get_arch_regstr(n);
 case 139:
  return __get_dwarf_regstr(x86_32_regstr_tbl, n);
 case 129:
  return __get_dwarf_regstr(x86_64_regstr_tbl, n);
 case 137:
  return __get_dwarf_regstr(arm_regstr_tbl, n);
 case 138:
  return __get_dwarf_regstr(aarch64_regstr_tbl, n);
 case 132:
  return __get_dwarf_regstr(sh_regstr_tbl, n);
 case 133:
  return __get_dwarf_regstr(s390_regstr_tbl, n);
 case 135:
 case 134:
  return __get_dwarf_regstr(powerpc_regstr_tbl, n);
 case 131:
 case 130:
  return __get_dwarf_regstr(sparc_regstr_tbl, n);
 case 128:
  return __get_dwarf_regstr(xtensa_regstr_tbl, n);
 default:
  pr_err("ELF MACHINE %x is not supported.\n", machine);
 }
 return ((void*)0);
}
