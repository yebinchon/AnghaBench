
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int dummy; } ;


 char* demangle_sym (struct dso*,int,char const*) ;

char *dso__demangle_sym(struct dso *dso, int kmodule, const char *elf_name)
{
 return demangle_sym(dso, kmodule, elf_name);
}
