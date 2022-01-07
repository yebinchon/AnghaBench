
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_info {int * sechdrs; } ;


 char const* sech_name (struct elf_info*,int *) ;

__attribute__((used)) static const char *sec_name(struct elf_info *elf, int secindex)
{
 return sech_name(elf, &elf->sechdrs[secindex]);
}
