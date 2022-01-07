
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sh_type; } ;
typedef TYPE_1__ Elf_Shdr ;


 scalar_t__ SHT_REL ;
 scalar_t__ SHT_RELA ;
 char const* __has_rel_mcount (TYPE_1__ const* const,TYPE_1__ const* const,char const* const,char const* const) ;
 scalar_t__ w (int ) ;

__attribute__((used)) static char const *has_rel_mcount(Elf_Shdr const *const relhdr,
      Elf_Shdr const *const shdr0,
      char const *const shstrtab,
      char const *const fname)
{
 if (w(relhdr->sh_type) != SHT_REL && w(relhdr->sh_type) != SHT_RELA)
  return ((void*)0);
 return __has_rel_mcount(relhdr, shdr0, shstrtab, fname);
}
