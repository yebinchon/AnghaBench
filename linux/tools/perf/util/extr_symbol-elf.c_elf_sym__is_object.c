
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ st_name; scalar_t__ st_shndx; } ;
typedef TYPE_1__ GElf_Sym ;


 scalar_t__ SHN_UNDEF ;
 scalar_t__ STT_OBJECT ;
 scalar_t__ elf_sym__type (TYPE_1__ const*) ;

__attribute__((used)) static inline bool elf_sym__is_object(const GElf_Sym *sym)
{
 return elf_sym__type(sym) == STT_OBJECT &&
  sym->st_name != 0 &&
  sym->st_shndx != SHN_UNDEF;
}
