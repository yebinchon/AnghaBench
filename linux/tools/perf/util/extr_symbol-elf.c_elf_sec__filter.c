
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GElf_Shdr ;
typedef int Elf_Data ;


 scalar_t__ elf_sec__is_data (int *,int *) ;
 scalar_t__ elf_sec__is_text (int *,int *) ;

__attribute__((used)) static bool elf_sec__filter(GElf_Shdr *shdr, Elf_Data *secstrs)
{
 return elf_sec__is_text(shdr, secstrs) ||
        elf_sec__is_data(shdr, secstrs);
}
