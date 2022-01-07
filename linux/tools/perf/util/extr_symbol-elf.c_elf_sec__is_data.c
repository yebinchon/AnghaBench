
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GElf_Shdr ;
typedef int Elf_Data ;


 int elf_sec__name (int const*,int const*) ;
 int * strstr (int ,char*) ;

__attribute__((used)) static inline bool elf_sec__is_data(const GElf_Shdr *shdr,
        const Elf_Data *secstrs)
{
 return strstr(elf_sec__name(shdr, secstrs), "data") != ((void*)0);
}
