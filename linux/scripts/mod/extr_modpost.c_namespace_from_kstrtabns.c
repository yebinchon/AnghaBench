
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct elf_info {char* ksymtab_strings; } ;
struct TYPE_3__ {int st_value; } ;
typedef TYPE_1__ Elf_Sym ;



__attribute__((used)) static const char *namespace_from_kstrtabns(struct elf_info *info,
         Elf_Sym *kstrtabns)
{
 char *value = info->ksymtab_strings + kstrtabns->st_value;
 return value[0] ? value : ((void*)0);
}
