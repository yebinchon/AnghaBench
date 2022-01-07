
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf32_Word ;


 unsigned int SHN_XINDEX ;
 unsigned int SPECIAL (unsigned int) ;
 scalar_t__ is_shndx_special (unsigned int) ;
 unsigned int r (int const*) ;

__attribute__((used)) static inline unsigned int get_secindex(unsigned int shndx,
     unsigned int sym_offs,
     const Elf32_Word *symtab_shndx_start)
{
 if (is_shndx_special(shndx))
  return SPECIAL(shndx);
 if (shndx != SHN_XINDEX)
  return shndx;
 return r(&symtab_shndx_start[sym_offs]);
}
