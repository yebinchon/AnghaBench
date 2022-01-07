
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct elf_info {unsigned int* symtab_shndx_start; TYPE_1__ const* symtab_start; } ;
struct TYPE_3__ {scalar_t__ st_shndx; } ;
typedef TYPE_1__ Elf_Sym ;


 scalar_t__ SHN_XINDEX ;
 unsigned int SPECIAL (scalar_t__) ;
 scalar_t__ is_shndx_special (scalar_t__) ;

__attribute__((used)) static inline unsigned int get_secindex(const struct elf_info *info,
     const Elf_Sym *sym)
{
 if (is_shndx_special(sym->st_shndx))
  return SPECIAL(sym->st_shndx);
 if (sym->st_shndx != SHN_XINDEX)
  return sym->st_shndx;
 return info->symtab_shndx_start[sym - info->symtab_start];
}
