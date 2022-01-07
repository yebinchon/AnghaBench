
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GElf_Sym ;


 scalar_t__ elf_sym__is_function (int *) ;
 scalar_t__ elf_sym__is_object (int *) ;

__attribute__((used)) static bool elf_sym__filter(GElf_Sym *sym)
{
 return elf_sym__is_function(sym) || elf_sym__is_object(sym);
}
