
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_info {int dummy; } ;


 char* get_next_modinfo (struct elf_info*,char const*,int *) ;

__attribute__((used)) static char *get_modinfo(struct elf_info *info, const char *tag)

{
 return get_next_modinfo(info, tag, ((void*)0));
}
